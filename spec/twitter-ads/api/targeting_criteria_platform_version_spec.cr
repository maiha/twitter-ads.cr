require "../../spec_helper"

describe TwitterAds::Api::TargetingCriteriaPlatformVersions do
  client = Mock::Client.new("CK", "CS", "AT", "AS")
  api = client.targeting_criteria_platform_versions

  describe "#targeting_criteria_platform_versions" do
    it "returns Array(TwitterAds::TargetingCriteriaPlatformVersion)" do
      api.size.should eq 2

      i = api.first
      i.name.should eq "Ice Cream Sandwich"
      i.targeting_type.should eq "PLATFORM_VERSION"
      i.targeting_value.should eq "17"
    end

    it "can be converted to pb." do
      api.each &.to_pb
    end
  end
end
