require "../../spec_helper"

describe TwitterAds::Api::TargetingCriteriaNetworkOperators do
  client = Mock::Client.new("CK", "CS", "AT", "AS")

  describe "#targeting_criteria_network_operators" do
    it "returns Array(TwitterAds::TargetingCriteriaNetworkOperator)" do
      res = client.targeting_criteria_network_operators
      i = res.first

      i.name.should eq "Advantage"
      i.targeting_type.should eq "NETWORK_OPERATOR"
      i.targeting_value.should eq "2l"
    end
  end
end
