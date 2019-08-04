require "../spec_helper"

describe TwitterAds::Client do
  describe "#authorized?" do
    it "returns true when all credential values exist" do
      client = TwitterAds::Client.new("CK", "CS", "AT", "AS")
      client.authorized?.should eq(true)
    end

    it "returns false when any credential values don't exist" do
      client = TwitterAds::Client.new("CK", "CS", "AT", "")
      client.authorized?.should eq(false)
    end
  end
end
