require "../../spec_helper"

describe TwitterAds::Api::TweetsLookup do
  client = Mock::Client.new("CK", "CS", "AT", "AS", "BT")

  describe "#tweets_lookup" do
    it "returns TwitterAds::TweetsLookup" do
      res = client.tweets_lookup(id: ["1519781379172495360"])
    end
  end
end
