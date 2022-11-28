require "../../spec_helper"

describe TwitterAds::Api::TargetingCriteria do
  client = Mock::Client.new("CK", "CS", "AT", "AS")
  api = client.targeting_criteria("18ce54d4x5t", ["8v7jo"])

  describe "#targeting_criteria" do
    it "returns TwitterAds::TargetingCriteria" do
      api.size.should eq 1

      item = api.first
      item.id.should eq "dpl3a6"
      item.name.should eq "Custom audience targeting"
      item.account_id.should eq "18ce54d4x5t"
    end

    it "accepts with_deleted" do
      # check only syntax
      client.targeting_criteria("18ce54d4x5t", ["8v7jo"], with_deleted: true)
    end

    it "can be converted to pb." do
      api.each &.to_pb
    end
  end
end
