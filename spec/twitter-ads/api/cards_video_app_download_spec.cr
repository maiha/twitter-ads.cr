require "../../spec_helper"

describe TwitterAds::Api::CardsVideoAppDownload do
  client = Mock::Client.new("CK", "CS", "AT", "AS")
  api = client.cards_video_app_download("18ce54d4x5t")

  describe "#cards_video_app_download" do
    it "returns Array(TwitterAds::CardsVideoAppDownload)" do
      api.size.should eq 1

      website = api.first
      website.id.should eq "5a4z3"
      website.card_type.should eq "VIDEO_APP_DOWNLOAD"
      website.card_uri.should eq "card://958233417929261056"
      website.name.should eq "video app download"
      website.account_id.should eq "18ce54d4x5t"
    end

    it "can be converted to pb." do
      api.each &.to_pb
    end
  end
end
