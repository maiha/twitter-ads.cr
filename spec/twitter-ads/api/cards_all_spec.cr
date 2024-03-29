require "../../spec_helper"

describe TwitterAds::Api::CardsAll do
  client = Mock::Client.new("CK", "CS", "AT", "AS")
  api = client.cards_all("18ce54d4x5t", ["card://1044294149527166979", "card://1044301099031658496"])

  describe "#cards_all" do
    it "returns Array(TwitterAds::CardsAll)" do
      api.size.should eq 2

      card = api.first
      card.id.should eq "692xn"
      card.card_type.should eq "IMAGE_APP_DOWNLOAD"
      card.card_uri.should eq "card://1044294149527166979"
      card.name.should eq "Twitter App"
      card.account_id.should eq "18ce54d4x5t"
    end

    it "can be converted to pb." do
      api.each &.to_pb
    end
  end
end
