require_relative "./spec_helper.rb"
require "mods"

include ModsData

describe "read in a MODS record: " do

  before(:all) do
    @mods_record = Mods::Record.new
    @mods_record.from_str(test_data)
  end

  context "given a string of data" do
    it "should create a MODS record out of it" do
      expect(@mods_record).to be_a Mods::Record
    end
  end

  context "given a MODS record" do
    it "should output a solr record" do
      expect(@mods_record.to_solr.gsub(/\s+/,"")).to eq test_solr_record.gsub(/\s+/,"")
    end
  end
end






