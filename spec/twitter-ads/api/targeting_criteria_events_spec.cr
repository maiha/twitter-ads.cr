require "../../spec_helper"

describe TwitterAds::Api::TargetingCriteriaEvents do
  client = Mock::Client.new("CK", "CS", "AT", "AS")
  api = client.targeting_criteria_events("HOLIDAY")

  describe "#targeting_criteria_events" do
    it "returns Array(TwitterAds::TargetingCriteriaEvent)" do
      api.size.should eq 1
      
      i = api.first
      i.name.should eq "New Year's"
      i.is_global.should eq true
    end

    it "can be converted to pb." do
      api.each &.to_pb
    end
  end
end
