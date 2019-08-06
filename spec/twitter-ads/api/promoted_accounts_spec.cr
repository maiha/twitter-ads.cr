require "../../spec_helper"

describe TwitterAds::Api::PromotedAccounts do  
  client = Mock::Client.new("CK", "CS", "AT", "AS")

  describe "#promoted_accounts" do
    it "returns Api::PromotedAccounts" do
      i = client.promoted_accounts("18ce54d4x5t").first
      i.id.should eq "19pl2"
      i.line_item_id.should eq "9bpb2"
      i.user_id.should eq "756201191646691328"
      i.account_id.should eq "18ce54d4x5t"
    end
  end
end
