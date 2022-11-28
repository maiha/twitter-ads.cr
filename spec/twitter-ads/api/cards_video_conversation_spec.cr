require "../../spec_helper"

describe TwitterAds::Api::CardsVideoConversation do
  client = Mock::Client.new("CK", "CS", "AT", "AS")
  api = client.cards_video_conversation("18ce54d4x5t")

  describe "#cards_video_conversation" do
    it "returns Array(TwitterAds::CardsVideoConversation)" do
      api.size.should eq 1

      video_conversation = api.first
      video_conversation.id.should eq "5a86h"
      video_conversation.card_type.should eq "VIDEO_CONVERSATION"
      video_conversation.card_uri.should eq "card://958397665015775232"
      video_conversation.name.should eq "video conversation card"
      video_conversation.account_id.should eq "18ce54d4x5t"
    end

    it "can be converted to pb." do
      api.each &.to_pb
    end
  end
end
