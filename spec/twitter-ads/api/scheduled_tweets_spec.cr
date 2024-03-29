require "../../spec_helper"

describe TwitterAds::Api::ScheduledTweets do
  client = Mock::Client.new("CK", "CS", "AT", "AS")
  api = client.scheduled_tweets("18ce54d4x5t")

  describe "#scheduled_tweets" do
    it "returns Array(TwitterAds::ScheduledTweet)" do
      api.size.should eq 1

      scheduled_tweet = api.first
      scheduled_tweet.id.should eq 875828692081037312
      scheduled_tweet.card_uri.should eq nil
      scheduled_tweet.scheduled_at.should eq "2017-06-18T22:00:00Z"
      scheduled_tweet.id_str.should eq "875828692081037312"
      scheduled_tweet.text.should eq "where you want to be"
      scheduled_tweet.tweet_id.should eq "876560168963645440"
      scheduled_tweet.user_id.should eq "756201191646691328"
      scheduled_tweet.account_id.should eq "18ce54d4x5t"
    end

    it "can be converted to pb." do
      api.each &.to_pb
    end
  end
end
