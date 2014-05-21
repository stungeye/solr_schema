require "nokogiri"
require_relative "../lib/data_processing.rb"

record_set = Nokogiri::XML(File.open(ARGV[0]).read.gsub("\n", "")).remove_namespaces!.xpath("//record")
solr_record_set = []

record_set.each do |record|
  solr_record_set << Record.new({:raw=>record.to_xml, :schema=>"dc"})
end

File.open("solr.xml", "w"){|f|
  f.puts %Q[<?xml version="1.0" encoding="UTF-8"?><add>]
  solr_record_set.each do |record|
    f.puts record.to_solr
  end
  f.puts %Q[</add>]
}
