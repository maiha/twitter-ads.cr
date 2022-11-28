require "../../spec_helper"

describe TwitterAds::Api::AuthenticatedUserAccess do  
  client = Mock::Client.new("CK", "CS", "AT", "AS")
  api = client.authenticated_user_access("18ce54d4x5t")

  describe "returns TwitterAds::AuthenticatedUserAccess" do
    it "returns TwitterAds::Api::AuthenticatedUserAccess" do
      api.user_id.should eq "2417045708"
      api.permissions.should eq ["ACCOUNT_ADMIN", "TWEET_COMPOSER"]
      api.account_id.should eq "18ce54d4x5t"
    end

    it "can be converted to pb." do
      api.each &.to_pb
    end
  end
end
