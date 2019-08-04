require "../spec_helper"

describe TwitterAds::Client do
  client = TwitterAds::Client.new("CK", "CS", "AT", "AS")

  describe "#authorized?" do
    it "returns true when all credential values exist" do
      client.authorized?.should eq(true)
    end

    it "returns false when any credential values don't exist" do
      client.consumer_secret = ""
      client.authorized?.should eq(false)
    end
  end
end
