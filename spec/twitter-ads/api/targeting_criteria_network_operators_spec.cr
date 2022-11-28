require "../../spec_helper"

describe TwitterAds::Api::TargetingCriteriaNetworkOperators do
  client = Mock::Client.new("CK", "CS", "AT", "AS")
  api = client.targeting_criteria_network_operators

  describe "#targeting_criteria_network_operators" do
    it "returns Array(TwitterAds::TargetingCriteriaNetworkOperator)" do
      api.size.should eq 5

      i = api.first
      i.name.should eq "Advantage"
      i.targeting_type.should eq "NETWORK_OPERATOR"
      i.targeting_value.should eq "2l"
    end

    it "can be converted to pb." do
      api.each &.to_pb
    end
  end
end
