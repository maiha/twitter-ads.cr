require "../../spec_helper"

describe TwitterAds::Api::TargetingCriteriaAppStoreCategories do
  client = Mock::Client.new("CK", "CS", "AT", "AS")

  describe "#targeting_criteria_app_store_categories" do
    it "returns Array(TwitterAds::TargetingCriteriaAppStoreCategory)" do
      res = client.targeting_criteria_app_store_categories
      i = res.first

      i.name.should eq "Games: Music"
      i.targeting_type.should eq "APP_STORE_CATEGORY"
      i.targeting_value.should eq "qouq"
    end
  end
end
