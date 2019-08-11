require "../../spec_helper"

describe TwitterAds::Api::CardsVideoDirectMessage do
  client = Mock::Client.new("CK", "CS", "AT", "AS")

  describe "#cards_video_direct_message" do
    it "returns Array(TwitterAds::CardsVideoDirectMessage)" do
      video_direct_messages = client.cards_video_direct_message("18ce54d4x5t")
      video_direct_messages.size.should eq 1

      video_direct_message = video_direct_messages.first
      video_direct_message.id.should eq "5a8av"
      video_direct_message.card_type.should eq "VIDEO_DIRECT_MESSAGE"
      video_direct_message.card_uri.should eq "card://958403939703054336"
      video_direct_message.name.should eq "video direct message card"
      video_direct_message.account_id.should eq "18ce54d4x5t"
    end
  end
end
