require "../../spec_helper"

describe TwitterAds::Api::TargetingCriteriaLanguages do
  client = Mock::Client.new("CK", "CS", "AT", "AS")

  describe "#targeting_criteria_languages" do
    it "returns Array(TwitterAds::TargetingCriteriaLanguage)" do
      res = client.targeting_criteria_languages
      i = res.first

      i.name.should eq "English"
      i.targeting_type.should eq "LANGUAGE"
      i.targeting_value.should eq "en"
    end
  end
end
