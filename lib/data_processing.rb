require "nokogiri"

class Record

  attr_reader :nodeset

  def initialize(data)

    if data[:schema] == "dc" then
      @root = "//metadata/dc"
    elsif data[:schema] == "mods" then
      @root = "//mods" 
    else
      @root = data[:root_element]
    end

    doc = Nokogiri::XML(data[:raw].gsub("\n", "")).remove_namespaces!.xpath(@root).children
    create_record(doc)

  end

  def to_solr
    solr_record = "<doc>"
  
    @nodeset.each do |key,value|
      solr_record += %Q[<field name="#{key}">#{value}</field>]
    end
 
    solr_record += "</doc>" 
  end

  private

  def create_record(document)
    @nodeset = {}
    node_offset=0
    document.each do |node|
      if @nodeset.has_key? node.name.to_sym then 
        node_offset+=1
	@nodeset["#{node.name}_#{node_offset}".to_sym] = node.text unless node.blank?
      else
         node_offset=0
         @nodeset[node.name.to_sym] = node.text
      end
    end
  end

end
