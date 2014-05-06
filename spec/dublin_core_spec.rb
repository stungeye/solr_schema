require_relative "spec_helper.rb"

include DublinCoreData

describe "read in dublin core record" do
  
  before(:all) do
    @dc_record = DublinCoreRecord.new(test_data)
  end

  context "given a string of data" do
    it "should create a Dublin Core record out of it" do
      expect(@dc_record).to be_a DublinCoreRecord 
    end
  end
  
  context "given a Dublin Core record" do
    it "should output a solr record" do
      @dc_record.to_solr.gsub(/\s+/,"").should == test_solr_record.gsub(/\s+/,"")
    end
  end

end
