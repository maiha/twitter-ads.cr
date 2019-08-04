require "../../spec_helper"

describe TwitterAds::Api::Accounts do
  client = Mock::Client.new("CK", "CS", "AT", "AS")

  describe "#accounts" do
    it "returns Array(TwitterAds::Account)" do
      accounts = client.accounts
      accounts.size.should eq 1
      account = accounts.first

      account.name.should eq "API McTestface"
      account.salt.should eq "54cb7b5a34183f77d82dd6d0f4329691"
      account.business_id.should eq nil
    end
  end
end
