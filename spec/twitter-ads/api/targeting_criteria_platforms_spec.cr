require "../../spec_helper"

describe TwitterAds::Api::TargetingCriteriaPlatforms do
  client = Mock::Client.new("CK", "CS", "AT", "AS")

  describe "#targeting_criteria_platforms" do
    it "returns Array(TwitterAds::TargetingCriteriaPlatform)" do
      res = client.targeting_criteria_platforms
      i = res.first

      i.name.should eq "iOS"
      i.targeting_type.should eq "PLATFORM"
      i.targeting_value.should eq "0"
    end
  end
end
