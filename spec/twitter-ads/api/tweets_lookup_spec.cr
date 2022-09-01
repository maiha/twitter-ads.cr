require "../../spec_helper"

describe TwitterAds::Api::TweetsLookup do
  client = Mock::Client.new("CK", "CS", "AT", "AS", "BT")

  describe "#tweets_lookup" do
    it "returns TwitterAds::TweetsLookup" do
      tweets_lookup = client.tweets_lookup(id: ["1519781379172495360"])
      pp! tweets_lookup
      tweets_lookup.size.should eq 1

      tweets_lookup = tweets_lookup.first
      tweets_lookup.id.should eq "1519781379172495360"
    end
  end
end
