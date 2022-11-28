require "../../spec_helper"

describe TwitterAds::Api::TargetingCriteriaAppStoreCategories do
  client = Mock::Client.new("CK", "CS", "AT", "AS")
  api = client.targeting_criteria_app_store_categories

  describe "#targeting_criteria_app_store_categories" do
    it "returns Array(TwitterAds::TargetingCriteriaAppStoreCategory)" do
      api.size.should eq 2
      
      i = api.first
      i.name.should eq "Games: Music"
      i.targeting_type.should eq "APP_STORE_CATEGORY"
      i.targeting_value.should eq "qouq"
    end

    it "can be converted to pb." do
      api.each &.to_pb
    end
  end
end
