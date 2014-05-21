require "nokogiri"

class Record

  attr_reader :nodeset

  def initialize(data)

    if data[:schema] == "dc" then
      @root_element = "//metadata/dc"
    elsif data[:schema] == "mods" then
      @root_element = "//mods" 
    else
      @root_element = data[:root_element]
    end

    create_record(nokogiri_document(data[:raw], @root_element))

  end

  def to_solr
    solr_record = "<doc>"
  
    @nodeset.each do |key,value|
      solr_record += xml_field_from(key, value)
    end
 
    solr_record += "</doc>" 
  end

  private

  def nokogiri_document(raw, root)
    Nokogiri::XML(raw.gsub("\n", "")).remove_namespaces!.xpath(root).children
  end

  def xml_field_from(key, value)
    %Q[<field name="#{key}">#{value}</field>]
  end

  def create_record(document)
    @nodeset = {}
    @node_offset=0
    document.each do |node|
      add_to_nodeset(node)
    end
  end

  def add_to_nodeset(node)
    if node_already_present?(node.name.to_sym) then 
      increment_field_name(node)
    else
      set_field_name_unchanged(node)
    end
  end

  def node_already_present?(node_name)
    @nodeset.has_key? node_name
  end

  # these two methods still need DRY
  def increment_field_name(node)
    @node_offset+=1  # I really dislike this offset variable.
    @nodeset["#{node.name}_#{@node_offset}".to_sym] = node.text unless node.blank?
  end

  def set_field_name_unchanged(node)
    @node_offset=0
    @nodeset[node.name.to_sym] = node.text
  end
end
