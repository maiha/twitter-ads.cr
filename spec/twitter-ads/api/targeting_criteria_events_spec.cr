require "../../spec_helper"

describe TwitterAds::Api::TargetingCriteriaEvents do
  client = Mock::Client.new("CK", "CS", "AT", "AS")

  describe "#targeting_criteria_events" do
    it "returns Array(TwitterAds::TargetingCriteriaEvent)" do
      res = client.targeting_criteria_events("HOLIDAY")
      i = res.first

      i.name.should eq "New Year's"
      i.id.should eq "1ex"
      i.is_global.should eq true
    end
  end
end
