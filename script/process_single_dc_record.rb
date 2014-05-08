require_relative "../lib/dublin_core.rb"

dc = DublinCoreRecord.new(File.open(ARGV[0]).read)
puts dc.to_solr
