require "../../spec_helper"

describe TwitterAds::Api::TargetingCriteriaPlatforms do
  client = Mock::Client.new("CK", "CS", "AT", "AS")
  api = client.targeting_criteria_platforms

  describe "#targeting_criteria_platforms" do
    it "returns Array(TwitterAds::TargetingCriteriaPlatform)" do
      api.size.should eq 5

      i = api.first
      i.name.should eq "iOS"
      i.targeting_type.should eq "PLATFORM"
      i.targeting_value.should eq "0"
    end

    it "can be converted to pb." do
      api.each &.to_pb
    end
  end
end
