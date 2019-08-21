require "../../spec_helper"

describe TwitterAds::Api::TargetingCriteriaBehaviorTaxonomies do
  client = Mock::Client.new("CK", "CS", "AT", "AS")

  describe "#targeting_criteria_behavior_taxonomies" do
    it "returns Array(TwitterAds::TargetingCriteriaBehaviorTaxonomy)" do
      res = client.targeting_criteria_behavior_taxonomies
      i = res.first

      i.name.should eq "Travel services"
      i.parent_id.should eq "31"
      i.id.should eq "5e"
    end
  end
end
