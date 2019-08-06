require "../../spec_helper"

describe TwitterAds::Api::LineItemPlacements do  
  client = Mock::Client.new("CK", "CS", "AT", "AS")

  describe "#line_item_placements" do
    it "returns Api::LineItemPlacements" do
      i = client.line_item_placements.first
      i.product_type.should eq "PROMOTED_ACCOUNT"
      i.placements.should eq [["ALL_ON_TWITTER"], ["TWITTER_TIMELINE"]]
    end
  end
end
