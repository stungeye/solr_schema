require_relative "../lib/data_processing.rb"

dc = Record.new({:raw => File.open(ARGV[0]).read, :schema=>"dc"})
puts dc.to_solr
