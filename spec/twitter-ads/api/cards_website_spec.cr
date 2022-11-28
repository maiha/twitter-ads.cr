require "../../spec_helper"

describe TwitterAds::Api::CardsWebsite do
  client = Mock::Client.new("CK", "CS", "AT", "AS")
  api = client.cards_website("18ce54d4x5t")

  describe "#cards_website" do
    it "returns Array(TwitterAds::CardsWebsite)" do
      api.size.should eq 1

      website = api.first
      website.id.should eq "59wh0"
      website.card_type.should eq "WEBSITE"
      website.card_uri.should eq "card://957044309437526017"
      website.name.should eq "website card"
      website.account_id.should eq "18ce54d4x5t"
    end

    it "can be converted to pb." do
      api.each &.to_pb
    end
  end
end
