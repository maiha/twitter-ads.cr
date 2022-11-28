require "../../spec_helper"

describe TwitterAds::Api::CardsImageConversation do
  client = Mock::Client.new("CK", "CS", "AT", "AS")
  api = client.cards_image_conversation("18ce54d4x5t")

  describe "#cards_image_conversation" do
    it "returns Array(TwitterAds::CardsImageConversation)" do
      api.size.should eq 1

      image_conversation = api.first
      image_conversation.id.should eq "59woh"
      image_conversation.card_type.should eq "IMAGE_CONVERSATION"
      image_conversation.card_uri.should eq "card://923498485702009837"
      image_conversation.name.should eq "image conversation card"
      image_conversation.account_id.should eq "18ce54d4x5t"
    end

    it "can be converted to pb." do
      api.each &.to_pb
    end
  end
end
