require "../../spec_helper"

describe TwitterAds::Api::TargetingCriteriaDevices do
  client = Mock::Client.new("CK", "CS", "AT", "AS")

  describe "#targeting_criteria_devices" do
    it "returns Array(TwitterAds::TargetingCriteriaDevice)" do
      res = client.targeting_criteria_devices
      i = res.first

      i.name.should eq "iPhone 3GS"
      i.targeting_type.should eq "DEVICE"
      i.targeting_value.should eq "1q"
    end
  end
end
