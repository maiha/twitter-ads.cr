require "../../spec_helper"

describe TwitterAds::Api::CardsImageConversation do
  client = Mock::Client.new("CK", "CS", "AT", "AS")

  describe "#cards_image_conversation" do
    it "returns Array(TwitterAds::CardsImageConversation)" do
      image_conversations = client.cards_image_conversation("18ce54d4x5t")
      image_conversations.size.should eq 1

      image_conversation = image_conversations.first
      image_conversation.id.should eq "59woh"
      image_conversation.card_type.should eq "IMAGE_CONVERSATION"
      image_conversation.card_uri.should eq "card://923498485702009837"
      image_conversation.name.should eq "image conversation card"
      image_conversation.account_id.should eq "18ce54d4x5t"
    end
  end
end
