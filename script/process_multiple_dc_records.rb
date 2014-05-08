require "nokogiri"
require_relative "../lib/dublin_core.rb"

record_set = Nokogiri::XML(File.open(ARGV[0]).read.gsub("\n", "")).remove_namespaces!.xpath("//record")
solr_record_set = []

record_set.each do |record|
  solr_record_set << DublinCoreRecord.new(record.to_xml)
end

File.open("solr.xml", "w"){|f|
  f.puts %Q[<?xml version="1.0" encoding="UTF-8"?><add>]
  solr_record_set.each do |record|
    f.puts record.to_solr
  end
  f.puts %Q[</add>]
}
