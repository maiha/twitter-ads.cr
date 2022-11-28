require "../../spec_helper"

describe TwitterAds::Api::TargetingCriteriaConversations do
  client = Mock::Client.new("CK", "CS", "AT", "AS")
  api = client.targeting_criteria_conversations(count: 2)

  describe "#targeting_criteria_conversations" do
    it "returns Array(TwitterAds::TargetingCriteriaConversation)" do
      api.size.should eq 2
      
      i = api.first
      i.name.should eq "NFL"
      i.targeting_type.should eq "CONVERSATION"
      i.targeting_value.should eq "a1"
    end

    it "can be converted to pb." do
      api.each &.to_pb
    end
  end
end
