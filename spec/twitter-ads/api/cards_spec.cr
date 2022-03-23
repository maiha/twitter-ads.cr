require "../../spec_helper"

describe TwitterAds::Api::Cards do
  client = Mock::Client.new("CK", "CS", "AT", "AS")

  describe "#cards" do
    it "returns Array(TwitterAds::CardsWebsite)" do
      cards = client.cards("18ce54d4x5t")
      cards.size.should eq 4
      cards.map(&.name).should eq [
                          "IMAGE_WEBSITE card",
                          "IMAGE_CAROUSEL_WEBSITE card",
                          "IMAGE_MULTI_DEST_CAROUSEL_WEBSITE card",
                          "IMAGE_APP card"
                        ]

      card = cards[0]
      card.card_type.should eq "IMAGE_WEBSITE"
      card.media_urls.should eq ["https://pbs.twimg.com/1.png"]
      
      card = cards[1]
      card.card_type.should eq "IMAGE_CAROUSEL_WEBSITE"
      card.media_urls.should eq ["https://pbs.twimg.com/1.png", "https://pbs.twimg.com/2.png"]
      
      card = cards[2]
      card.card_type.should eq "IMAGE_MULTI_DEST_CAROUSEL_WEBSITE"
      card.media_urls.should eq ["https://pbs.twimg.com/1.png", "https://pbs.twimg.com/2.png", "https://pbs.twimg.com/3.png", "https://pbs.twimg.com/4.png"]
      
      card = cards[3]
      card.card_type.should eq "IMAGE_APP"
      card.media_urls.should eq ["https://pbs.twimg.com/1.png", "https://pbs.twimg.com/2.png"]

      cards.account_id.should eq "18ce54d4x5t"
    end
  end
end
