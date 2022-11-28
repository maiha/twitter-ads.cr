require "../../spec_helper"

describe TwitterAds::Api::CardsVideoWebsite do
  client = Mock::Client.new("CK", "CS", "AT", "AS")
  api = client.cards_video_website("18ce54d4x5t")

  describe "#cards_video_website" do
    it "returns Array(TwitterAds::CardsVideoWebsite)" do
      api.size.should eq 1

      website = api.first
      website.id.should eq "5a4vf"
      website.card_type.should eq "VIDEO_WEBSITE"
      website.card_uri.should eq "card://958225772740714496"
      website.name.should eq "video website card"
      website.account_id.should eq "18ce54d4x5t"
    end

    it "can be converted to pb." do
      api.each &.to_pb
    end
  end
end
