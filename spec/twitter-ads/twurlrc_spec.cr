require "../spec_helper"

describe TwitterAds::Client do
  describe ".from_twurlrc" do
    it "builds client" do
      path = File.dirname(__FILE__) + "/../mock/twurlrc"
      client = TwitterAds::Client.from_twurlrc(path)
      client.consumer_key.should eq("key1")
      client.consumer_secret.should eq("user2-key1-cs")
      client.access_token.should eq("user2-key1-at")
      client.access_token_secret.should eq("user2-key1-as")
    end
  end
end
