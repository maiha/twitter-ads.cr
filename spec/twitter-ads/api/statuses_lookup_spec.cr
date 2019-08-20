require "../../spec_helper"

describe TwitterAds::Api::StatusesLookup do
  client = Mock::Client.new("CK", "CS", "AT", "AS")

  describe "#statuses_lookup" do
    it "returns TwitterAds::StatusesLookup" do
      res = client.statuses_lookup(["20","1050118621198921728"])
      res.size.should eq 2
    end
  end
end
