require "../../spec_helper"

describe TwitterAds::Api::TargetingCriteriaBehaviors do
  client = Mock::Client.new("CK", "CS", "AT", "AS")

  describe "#targeting_criteria_behaviors" do
    it "returns Array(TwitterAds::TargetingCriteriaBehavior)" do
      res = client.targeting_criteria_behaviors
      i = res.first

      i.name.should eq "Auto service buyer"
      i.targetable_types.should eq [
                           "BEHAVIOR",
                           "NEGATIVE_BEHAVIOR",
                           "BEHAVIOR_LOOKALIKE_EXPANDED",
                         ]
      i.id.should eq "lfrt"
    end
  end
end
