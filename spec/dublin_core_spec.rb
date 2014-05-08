require_relative "spec_helper.rb"
require_relative "./dc_data.rb"

include DublinCoreData

describe "read in dublin core record" do
  
  before(:each) do
    @dc_record = DublinCoreRecord.new(DublinCoreData::test_data)
  end

  context "given a string of data" do
    it "should create a Dublin Core record out of it" do
      expect(@dc_record).to be_a DublinCoreRecord 
    end
  end
  
  context "given a Dublin Core record" do
    it "should output a solr record" do
      @dc_record.to_solr.gsub(/\s+/,"").should == DublinCoreData::test_solr_record.gsub(/\s+/,"")
    end
  end

end
