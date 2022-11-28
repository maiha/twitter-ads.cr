require "../../spec_helper"

describe TwitterAds::Api::StatusesLookup do
  client = Mock::Client.new("CK", "CS", "AT", "AS")
  api = client.statuses_lookup(["20","1050118621198921728"])

  describe "#statuses_lookup" do
    it "returns TwitterAds::StatusesLookup" do
      api.size.should eq 2
    end

    it "can be converted to pb." do
      api.each &.to_pb
    end
  end
end
