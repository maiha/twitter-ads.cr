require "../../spec_helper"

describe TwitterAds::Api::PromotedTweets do
  client = Mock::Client.new("CK", "CS", "AT", "AS")

  describe "#promoted_tweets" do
    it "returns Array(TwitterAds::PromotedTweets)" do
      ary = client.promoted_tweets("18ce54d4x5t")
      ary.size.should eq 1

      item = ary.first
      item.id.should eq "1efwlo"
      item.tweet_id.should eq "880290790664060928"
      item.line_item_id.should eq "96uzp"
    end
  end
end
