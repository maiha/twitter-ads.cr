require "../../spec_helper"

describe TwitterAds::Api::TargetingCriteria do
  client = Mock::Client.new("CK", "CS", "AT", "AS")

  describe "#targeting_criteria" do
    it "returns Array(TwitterAds::TargetingCriteria)" do
      ary = client.targeting_criteria("18ce54d4x5t", ["8v7jo"])
      ary.size.should eq 1

      item = ary.first
      item.id.should eq "dpl3a6"
      item.name.should eq "Custom audience targeting"
      item.account_id.should eq "18ce54d4x5t"
    end
  end
end
