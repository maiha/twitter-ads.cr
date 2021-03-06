require "../../spec_helper"

describe TwitterAds::Api::Accounts do
  client = Mock::Client.new("CK", "CS", "AT", "AS").tap{|c|
    # Only in the case of "accounts", there is a directory of the same name, so use a mock file with a ".json" suffix
    c.api_suffix = ".json"
  }

  describe "#accounts" do
    it "returns Array(TwitterAds::Account)" do
      accounts = client.accounts
      accounts.size.should eq 1
      account = accounts.first

      account.name.should eq "API McTestface"
      account.salt.should eq "54cb7b5a34183f77d82dd6d0f4329691"
      account.business_id.should eq nil
    end

    it "accepts with_deleted" do
      # check only syntax
      client.campaigns("18ce54d4x5t", with_deleted: true)
    end
  end
end
