require "../../spec_helper"

describe TwitterAds::Api::ScheduledPromotedTweets do  
  client = Mock::Client.new("CK", "CS", "AT", "AS")

  describe "#scheduled_promoted_tweets" do
    it "returns Api::ScheduledPromotedTweets" do
      i = client.scheduled_promoted_tweets("18ce54d4x5t").first
      i.id.should eq "1xboq"
      i.line_item_id.should eq "8xdpe"
      i.tweet_id.should eq "870369382207070208"
      i.scheduled_tweet_id.should eq "870366669373194240"
      i.account_id.should eq "18ce54d4x5t"
    end
  end
end
