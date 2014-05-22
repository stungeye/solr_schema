require_relative "spec_helper.rb"

include DublinCoreData
include ModsData

describe "read in dublin core record" do
  
  before(:all) do
    @dc_record = Record.new({:raw => DublinCoreData::dc_test_data, :schema => "dc"})
    @mods_record = Record.new({:raw => ModsData::mods_test_data, :schema => "mods"})
  end
  
  context "given a Dublin Core record" do
    it "should output a solr record" do
      expect(@dc_record.to_solr.gsub(/\s+/,"")).to eq DublinCoreData::test_dc_solr_record.gsub(/\s+/,"")
    end
  end

  context "given a MODS record" do
    it "should output a solr record" do
      expect(@mods_record.to_solr.gsub(/\s+/,"")).to eq ModsData::test_mods_solr_record.gsub(/\s+/,"")
   end
  end
  
  context "given a root element record" do
    it "should output a solr record" do
      root_element_record = Record.new({:raw => DublinCoreData::dc_test_data, :root_element => "//metadata/dc"})
      expect(root_element_record.to_solr.gsub(/\s+/,"")).to eq DublinCoreData::test_dc_solr_record.gsub(/\s+/,"")
   end
  end

end
