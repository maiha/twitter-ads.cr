require "../../spec_helper"

describe TwitterAds::Api::Cards do
  client = Mock::Client.new("CK", "CS", "AT", "AS")
  api = client.cards("18ce54d4x5t")

  describe "#cards" do
    it "returns Array(TwitterAds::Cards)" do
      api.account_id.should eq "18ce54d4x5t"
      api.size.should eq 5
      api.map(&.name).should eq [
                        "IMAGE_WEBSITE card",
                        "IMAGE_CAROUSEL_WEBSITE card",
                        "IMAGE_MULTI_DEST_CAROUSEL_WEBSITE card",
                        "IMAGE_APP card",
                        "IMAGE_CAROUSEL_APP card"
                      ]

      card = api[0]
      card.card_type.should eq "IMAGE_WEBSITE"
      card.titles.should eq ["Twitter Developers"]
      card.media_keys.should eq ["3_908573900237180932"]
      card.media_urls.should eq ["https://pbs.twimg.com/1.png"]
      card.dest_urls.should eq ["https://developer.twitter.com"]
      card.button_label.should eq ""
      card.button_app_country.should eq ""
      card.button_app_ios_id.should eq ""
      card.button_app_ios_link.should eq ""
      card.button_app_google_id.should eq ""
      card.button_app_google_link.should eq ""
      
      card = api[1]
      card.card_type.should eq "IMAGE_CAROUSEL_WEBSITE"
      card.titles.should eq ["Twitter Developers"]
      card.media_keys.should eq ["3_9085739002371809321", "3_9085739002371809322"]
      card.media_urls.should eq ["https://pbs.twimg.com/1.png", "https://pbs.twimg.com/2.png"]
      card.dest_urls.should eq ["https://developer.twitter.com"]
      card.button_label.should eq ""
      card.button_app_country.should eq ""
      card.button_app_ios_id.should eq ""
      card.button_app_ios_link.should eq ""
      card.button_app_google_id.should eq ""
      card.button_app_google_link.should eq ""

      card = api[2]
      card.card_type.should eq "IMAGE_MULTI_DEST_CAROUSEL_WEBSITE"
      card.titles.should eq ["Twitter Developers", "Twitter"]
      card.media_keys.should eq ["3_908573900237180933", "3_9085739002371809343", "3_9085739002371809351"]
      card.media_urls.should eq ["https://pbs.twimg.com/1.png", "https://pbs.twimg.com/2.png", "https://pbs.twimg.com/3.png", "https://pbs.twimg.com/4.png"]
      card.dest_urls.should eq  ["https://developer.twitter.com", "https://twitter.com"]
      card.button_label.should eq ""
      card.button_app_country.should eq ""
      card.button_app_ios_id.should eq ""
      card.button_app_ios_link.should eq ""
      card.button_app_google_id.should eq ""
      card.button_app_google_link.should eq ""

      card = api[3]
      card.card_type.should eq "IMAGE_APP"
      card.titles.should eq %w()
      card.media_keys.should eq ["3_908573900237180951", "3_908573900237180952"]
      card.media_urls.should eq ["https://pbs.twimg.com/1.png", "https://pbs.twimg.com/2.png"]
      card.dest_urls.should eq %w()
      card.button_label.should eq "INSTALL"
      card.button_app_country.should eq "JP"
      card.button_app_ios_id.should eq "123783545"
      card.button_app_ios_link.should eq ""
      card.button_app_google_id.should eq ""
      card.button_app_google_link.should eq ""

      card = api[4]
      card.card_type.should eq "IMAGE_CAROUSEL_APP"
      card.titles.should eq %w()
      card.media_keys.should eq ["3_1073727809120419840", "3_1075096386931052545"]
      card.media_urls.should eq %w()
      card.dest_urls.should eq %w()
      card.button_label.should eq "OPEN"
      card.button_app_country.should eq "US"
      card.button_app_ios_id.should eq ""
      card.button_app_ios_link.should eq ""
      card.button_app_google_id.should eq "com.twitter.android"
      card.button_app_google_link.should eq "twitter://user?screen_name=apimctestface"      
    end

    it "can be converted to pb." do
      api.each &.to_pb
    end
  end
end
