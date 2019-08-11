require "../../spec_helper"

describe TwitterAds::Api::CardsVideoAppDownload do
  client = Mock::Client.new("CK", "CS", "AT", "AS")

  describe "#cards_video_app_download" do
    it "returns Array(TwitterAds::CardsVideoAppDownload)" do
      websites = client.cards_video_app_download("18ce54d4x5t")
      websites.size.should eq 1

      website = websites.first
      website.id.should eq "5a4z3"
      website.card_type.should eq "VIDEO_APP_DOWNLOAD"
      website.card_uri.should eq "card://958233417929261056"
      website.name.should eq "video app download"
      website.account_id.should eq "18ce54d4x5t"
    end
  end
end
