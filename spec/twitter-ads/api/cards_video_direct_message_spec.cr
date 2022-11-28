require "../../spec_helper"

describe TwitterAds::Api::CardsVideoDirectMessage do
  client = Mock::Client.new("CK", "CS", "AT", "AS")
  api = client.cards_video_direct_message("18ce54d4x5t")

  describe "#cards_video_direct_message" do
    it "returns Array(TwitterAds::CardsVideoDirectMessage)" do
      api.size.should eq 1

      video_direct_message = api.first
      video_direct_message.id.should eq "5a8av"
      video_direct_message.card_type.should eq "VIDEO_DIRECT_MESSAGE"
      video_direct_message.card_uri.should eq "card://958403939703054336"
      video_direct_message.name.should eq "video direct message card"
      video_direct_message.account_id.should eq "18ce54d4x5t"
    end

    it "can be converted to pb." do
      api.each &.to_pb
    end
  end
end
