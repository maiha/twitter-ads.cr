require "../../spec_helper"

describe TwitterAds::Api::CardsImageDirectMessage do
  client = Mock::Client.new("CK", "CS", "AT", "AS")

  describe "#cards_image_direct_message" do
    it "returns Array(TwitterAds::CardsImageDirectMessage)" do
      image_direct_messages = client.cards_image_direct_message("18ce54d4x5t")
      image_direct_messages.size.should eq 1

      image_direct_message = image_direct_messages.first
      image_direct_message.id.should eq "59wpi"
      image_direct_message.card_type.should eq "IMAGE_DIRECT_MESSAGE"
      image_direct_message.card_uri.should eq "card://957127157993500678"
      image_direct_message.name.should eq "space card"
      image_direct_message.account_id.should eq "18ce54d4x5t"
    end
  end
end
