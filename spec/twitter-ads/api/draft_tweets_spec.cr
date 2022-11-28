require "../../spec_helper"

describe TwitterAds::Api::DraftTweets do
  client = Mock::Client.new("CK", "CS", "AT", "AS")
  api = client.draft_tweets("18ce54d4x5t")

  describe "#draft_tweets" do
    it "returns Array(TwitterAds::DraftTweet)" do
      api.size.should eq 1

      draft_tweet = api.first
      draft_tweet.id.should eq "994791681219231744"
      draft_tweet.user_id.should eq "756201191646691328"
      draft_tweet.text.should eq "hello, world"
      draft_tweet.account_id.should eq "18ce54d4x5t"
    end

    it "can be converted to pb." do
      api.each &.to_pb
    end
  end
end
