require "../../spec_helper"

describe TwitterAds::Api::CardsImageAppDownload do
  client = Mock::Client.new("CK", "CS", "AT", "AS")

  describe "#cards_image_app_download" do
    it "returns Array(TwitterAds::CardsImageAppDownload)" do
      websites = client.cards_image_app_download("18ce54d4x5t")
      websites.size.should eq 1

      website = websites.first
      website.id.should eq "59wiu"
      website.card_type.should eq "IMAGE_APP_DOWNLOAD"
      website.card_uri.should eq "card://957050688416112640"
      website.name.should eq "image app download card"
      website.account_id.should eq "18ce54d4x5t"
    end
  end
end
