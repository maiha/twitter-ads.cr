require "../../spec_helper"

describe TwitterAds::Api::CardsVideoWebsite do
  client = Mock::Client.new("CK", "CS", "AT", "AS")

  describe "#cards_video_website" do
    it "returns Array(TwitterAds::CardsVideoWebsite)" do
      websites = client.cards_video_website("18ce54d4x5t")
      websites.size.should eq 1

      website = websites.first
      website.id.should eq "5a4vf"
      website.card_type.should eq "VIDEO_WEBSITE"
      website.card_uri.should eq "card://958225772740714496"
      website.name.should eq "video website card"
      website.account_id.should eq "18ce54d4x5t"
    end
  end
end
