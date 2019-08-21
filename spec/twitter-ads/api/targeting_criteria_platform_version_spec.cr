require "../../spec_helper"

describe TwitterAds::Api::TargetingCriteriaPlatformVersions do
  client = Mock::Client.new("CK", "CS", "AT", "AS")

  describe "#targeting_criteria_platform_versions" do
    it "returns Array(TwitterAds::TargetingCriteriaPlatformVersion)" do
      res = client.targeting_criteria_platform_versions
      i = res.first

      i.name.should eq "Ice Cream Sandwich"
      i.targeting_type.should eq "PLATFORM_VERSION"
      i.targeting_value.should eq "17"
    end
  end
end
