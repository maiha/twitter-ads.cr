require "../../spec_helper"

describe TwitterAds::Api::TargetingCriteriaInterests do
  client = Mock::Client.new("CK", "CS", "AT", "AS")

  describe "#targeting_criteria_interests" do
    it "returns Array(TwitterAds::TargetingCriteriaInterest)" do
      res = client.targeting_criteria_interests
      i = res.first

      i.name.should eq "Books and literature/Biographies and memoirs"
      i.targeting_type.should eq "INTEREST"
      i.targeting_value.should eq "1001"
    end
  end
end
