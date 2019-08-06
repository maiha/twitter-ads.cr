require "../../spec_helper"

describe TwitterAds::Api::AuthenticatedUserAccess do  
  client = Mock::Client.new("CK", "CS", "AT", "AS")

  describe "#media_creatives" do
    it "returns Api::AuthenticatedUserAccess" do
      i = client.authenticated_user_access("18ce54d4x5t")
      i.user_id.should eq 2417045708
      i.permissions.should eq ["ACCOUNT_ADMIN", "TWEET_COMPOSER"]
      i.account_id.should eq "18ce54d4x5t"
    end
  end
end
