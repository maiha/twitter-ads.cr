require "../../spec_helper"

describe TwitterAds::Api::CardsVideoConversation do
  client = Mock::Client.new("CK", "CS", "AT", "AS")

  describe "#cards_video_conversation" do
    it "returns Array(TwitterAds::CardsVideoConversation)" do
      video_conversations = client.cards_video_conversation("18ce54d4x5t")
      video_conversations.size.should eq 1

      video_conversation = video_conversations.first
      video_conversation.id.should eq "5a86h"
      video_conversation.card_type.should eq "VIDEO_CONVERSATION"
      video_conversation.card_uri.should eq "card://958397665015775232"
      video_conversation.name.should eq "video conversation card"
      video_conversation.account_id.should eq "18ce54d4x5t"
    end
  end
end
