require "../../spec_helper"

describe TwitterAds::Api::Tweets do
  client = Mock::Client.new("CK", "CS", "AT", "AS")
  api = client.tweets("18ce54d4x5t", tweet_ids: "1166476031668015104", trim_user: true)

  describe "#tweets" do
    it "returns Array(TwitterAds::Tweet)" do
      api.size.should eq 1

      tweet = api.first
      tweet.id.should eq 1166476031668015104
      tweet.tweet_id.should eq "1166476031668015104"
      tweet.full_text.should eq "hello, v6"
      tweet.user_id.should eq 756201191646691328
      tweet.name.should eq nil
      tweet.conversation_settings.should eq "EVERYONE"
      tweet.scopes_followers.should eq false
      tweet.display_text_range.should eq [0, 9]
      tweet.contributors.should eq [2417045708]
      tweet.account_id.should eq "18ce54d4x5t"
    end

    it "raises when invalid TweetType given" do
      expect_raises(ArgumentError) do
        client.tweets("18ce54d4x5t", tweet_type: "XXX")
      end
    end

    it "can be converted to pb." do
      api.each &.to_pb
    end
  end
end
