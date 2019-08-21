require "../../spec_helper"

describe TwitterAds::Api::TargetingCriteriaConversations do
  client = Mock::Client.new("CK", "CS", "AT", "AS")

  describe "#targeting_criteria_conversations" do
    it "returns Array(TwitterAds::TargetingCriteriaConversation)" do
      res = client.targeting_criteria_conversations(count: 2)
      i = res.first

      i.name.should eq "NFL"
      i.targeting_type.should eq "CONVERSATION"
      i.targeting_value.should eq "a1"
    end
  end
end
