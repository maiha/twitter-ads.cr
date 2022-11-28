require "../../spec_helper"

describe TwitterAds::Api::TargetingCriteriaDevices do
  client = Mock::Client.new("CK", "CS", "AT", "AS")
  api = client.targeting_criteria_devices

  describe "#targeting_criteria_devices" do
    it "returns Array(TwitterAds::TargetingCriteriaDevice)" do
      api.size.should eq 2

      i = api.first
      i.name.should eq "iPhone 3GS"
      i.targeting_type.should eq "DEVICE"
      i.targeting_value.should eq "1q"
    end

    it "can be converted to pb." do
      api.each &.to_pb
    end
  end
end
