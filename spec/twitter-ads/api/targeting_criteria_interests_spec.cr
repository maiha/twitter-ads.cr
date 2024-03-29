require "../../spec_helper"

describe TwitterAds::Api::TargetingCriteriaInterests do
  client = Mock::Client.new("CK", "CS", "AT", "AS")
  api = client.targeting_criteria_interests

  describe "#targeting_criteria_interests" do
    it "returns Array(TwitterAds::TargetingCriteriaInterest)" do
      api.size.should eq 1
      
      i = api.first
      i.name.should eq "Books and literature/Biographies and memoirs"
      i.targeting_type.should eq "INTEREST"
      i.targeting_value.should eq "1001"
    end

    it "can be converted to pb." do
      api.each &.to_pb
    end
  end
end
