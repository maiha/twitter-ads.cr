require "../../spec_helper"

describe TwitterAds::Api::PromotedAccounts do  
  client = Mock::Client.new("CK", "CS", "AT", "AS")
  api = client.promoted_accounts("18ce54d4x5t")

  describe "#promoted_accounts" do
    it "returns Api::PromotedAccounts" do
      api.size.should eq 1

      i = api.first
      i.id.should eq "19pl2"
      i.line_item_id.should eq "9bpb2"
      i.user_id.should eq "756201191646691328"
      i.account_id.should eq "18ce54d4x5t"
    end

    it "accepts with_deleted" do
      # check only syntax
      client.promoted_accounts("18ce54d4x5t", with_deleted: true)
    end

    it "can be converted to pb." do
      api.each &.to_pb
    end
  end
end
