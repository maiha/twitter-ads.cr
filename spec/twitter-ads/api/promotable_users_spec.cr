require "../../spec_helper"

describe TwitterAds::Api::PromotableUsers do  
  client = Mock::Client.new("CK", "CS", "AT", "AS")
  api = client.promotable_users("18ce54d4x5t")

  describe "#promotable_users" do
    it "returns Api::PromotableUsers" do
      api.size.should eq 1

      i = api.first
      i.id.should eq "l310s"
      i.promotable_user_type.should eq "FULL"
      i.account_id.should eq "18ce54d4x5t"
    end

    it "accepts with_deleted" do
      # check only syntax
      client.promotable_users("18ce54d4x5t", with_deleted: true)
    end

    it "can be converted to pb." do
      api.each &.to_pb
    end
  end
end
