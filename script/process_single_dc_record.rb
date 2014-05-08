require_relative "../lib/dublin_core.rb"

class String
  def blank?
    respond_to?(:empty?) ? empty? : !self
  end
end

dc = DublinCoreRecord.new(File.open(ARGV[0]).read)
puts dc.to_solr
