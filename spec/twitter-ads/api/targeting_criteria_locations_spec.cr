require "../../spec_helper"

describe TwitterAds::Api::TargetingCriteriaLocations do
  client = Mock::Client.new("CK", "CS", "AT", "AS")

  describe "#targeting_criteria_locations" do
    it "returns Array(TwitterAds::TargetingCriteriaLocation)" do
      res = client.targeting_criteria_locations
      i = res.first

      i.name.should eq "Los Angeles, Los Angeles CA, CA, USA"
      i.country_code.should eq "US"
      i.location_type.should eq "CITIES"
      i.targeting_value.should eq "3b77caf94bfc81fe"
      i.targeting_type.should eq "LOCATION"
    end
  end
end
