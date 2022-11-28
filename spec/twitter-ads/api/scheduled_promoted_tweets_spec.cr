require "../../spec_helper"

describe TwitterAds::Api::ScheduledPromotedTweets do  
  client = Mock::Client.new("CK", "CS", "AT", "AS")
  api = client.scheduled_promoted_tweets("18ce54d4x5t")

  describe "#scheduled_promoted_tweets" do
    it "returns Api::ScheduledPromotedTweets" do
      api.size.should eq 1

      i = api.first
      i.id.should eq "1xboq"
      i.line_item_id.should eq "8xdpe"
      i.tweet_id.should eq "870369382207070208"
      i.scheduled_tweet_id.should eq "870366669373194240"
      i.account_id.should eq "18ce54d4x5t"
    end

    it "accepts with_deleted" do
      # check only syntax
      client.scheduled_promoted_tweets("18ce54d4x5t", with_deleted: true)
    end

    it "can be converted to pb." do
      api.each &.to_pb
    end
  end
end
