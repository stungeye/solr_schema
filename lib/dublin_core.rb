require "nokogiri"

class DublinCoreRecord

  def initialize(data)

    doc = Nokogiri::XML(data).remove_namespaces!
    create_record(doc)

  end

  def to_solr

  %Q[<doc>
     <field name="title">#{@title}</field>
     <field name="creator">#{@creator}</field>
     <field name="publisher">#{@publisher}</field>
     <field name="type">#{@type}</field>
     <field name="language">#{@language}</field>]+
     subjects+
     %Q[<field name="uuid">#{@uuid}</field>
     <field name="format">#{@format}</field>
     <field name="rights">#{@rights}</field>  
   </doc>]

  end

  private

  def create_record(document)
    @title = document.xpath("//title").text
    @creator = document.xpath("//creator").text
    @publisher = document.xpath("//publisher").text
    @type = document.xpath("//type").text
    @language = document.xpath("//language").text
    @subjects = document.xpath("//subject")
    @uuid = document.xpath("//setSpec").text.gsub("uuid:", "")
    @format = document.xpath("//format").text
    @rights = document.xpath("//rights").text
    #@nodeset = {}
    #puts "create_record"
    #puts document.class
    #document.each do |node|
    #  puts node
    #  @nodeset[node.text.to_sym] = node.text
    #end
  end

  def subjects
     subjects = ""
     @subjects.each do |subject|
      subjects += %Q[<field name="subject">#{subject.text}</field>]
     end
     subjects
   end
end
