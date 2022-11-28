require "../../spec_helper"

describe TwitterAds::Api::PromotedTweets do
  client = Mock::Client.new("CK", "CS", "AT", "AS")
  api = client.promoted_tweets("18ce54d4x5t")

  describe "#promoted_tweets" do
    it "returns Array(TwitterAds::PromotedTweets)" do
      api.size.should eq 1

      item = api.first
      item.id.should eq "1efwlo"
      item.tweet_id.should eq "880290790664060928"
      item.line_item_id.should eq "96uzp"
      item.account_id.should eq "18ce54d4x5t"
    end

    it "can be converted to pb." do
      api.each &.to_pb
    end
  end
end
