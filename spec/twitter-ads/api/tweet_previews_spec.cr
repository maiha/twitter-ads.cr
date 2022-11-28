require "../../spec_helper"

describe TwitterAds::Api::TweetPreviews do
  client = Mock::Client.new("CK", "CS", "AT", "AS")
  api = client.tweet_previews("18ce54d4x5t", "PUBLISHED", [1122911801354510336,1102836745790316550])

  describe "#tweet_previews" do
    it "returns Array(TwitterAds::TweetPreview)" do
      api.size.should eq 2

      tweet_preview = api.first
      tweet_preview.tweet_id.should eq "1122911801354510336"
      tweet_preview.preview.should match /^<iframe/
      tweet_preview.account_id.should eq "18ce54d4x5t"
    end

    it "raises when invalid TweetType given" do
      expect_raises(ArgumentError, /TweetType Error: got "XXX"/) do
        client.tweet_previews("18ce54d4x5t", "XXX", [1_i64])
      end
    end

    it "can be converted to pb." do
      api.each &.to_pb
    end
  end
end
