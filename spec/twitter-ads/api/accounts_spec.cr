require "../../spec_helper"

describe TwitterAds::Api::Accounts do
  client = Mock::Client.new("CK", "CS", "AT", "AS")
  api = client.accounts

  describe "#accounts" do
    it "returns Array(TwitterAds::Account)" do
      api.size.should eq 1
      account = api.first

      account.name.should eq "API McTestface"
      account.salt.should eq "54cb7b5a34183f77d82dd6d0f4329691"
      account.business_id.should eq nil
    end

    it "accepts with_deleted" do
      # check only syntax
      client.campaigns("18ce54d4x5t", with_deleted: true)
    end

    it "can be converted to pb." do
      api.each &.to_pb
    end
  end
end
