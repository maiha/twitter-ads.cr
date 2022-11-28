require "../../spec_helper"

describe TwitterAds::Api::CardsPoll do
  client = Mock::Client.new("CK", "CS", "AT", "AS")
  api = client.cards_poll("18ce54d4x5t")

  describe "#cards_poll" do
    it "returns Array(TwitterAds::CardsPoll)" do
      api.size.should eq 1

      poll = api.first
      poll.id.should eq "57i77"
      poll.card_type.should eq "VIDEO_POLLS"
      poll.card_uri.should eq "card://950590850777497601"
      poll.name.should eq "best coast poll"
      poll.account_id.should eq "18ce54d4x5t"
    end

    it "can be converted to pb." do
      api.each &.to_pb
    end
  end
end
