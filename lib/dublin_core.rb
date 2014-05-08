require "nokogiri"

class String
  def blank?
    respond_to?(:empty?) ? empty? : !self
  end
end

class DublinCoreRecord

  attr_reader :nodeset

  def initialize(data)

    doc = Nokogiri::XML(data.gsub("\n", "")).remove_namespaces!.xpath("//metadata/dc").children
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
	@nodeset["#{node.name}_#{node_offset}".to_sym] = node.text unless node.text.blank?
      else
         node_offset=0
         @nodeset[node.name.to_sym] = node.text
      end
    end
  end

  def subjects
     subjects = ""
     @subjects.each do |subject|
      subjects += %Q[<field name="subject">#{subject.text}</field>]
     end
     subjects
   end
end
