require "../../spec_helper"

describe TwitterAds::Api::LineItemPlacements do  
  client = Mock::Client.new("CK", "CS", "AT", "AS")
  api = client.line_item_placements

  describe "#line_item_placements" do
    it "returns Api::LineItemPlacements" do
      api.size.should eq(1)

      i = api.first
      i.product_type.should eq "PROMOTED_ACCOUNT"
      i.placements.should eq [["ALL_ON_TWITTER"], ["TWITTER_TIMELINE"]]
    end

    it "can be converted to pb." do
      api.each &.to_pb
    end
  end
end
