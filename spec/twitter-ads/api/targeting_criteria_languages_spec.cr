require "../../spec_helper"

describe TwitterAds::Api::TargetingCriteriaLanguages do
  client = Mock::Client.new("CK", "CS", "AT", "AS")
      api = client.targeting_criteria_languages

  describe "#targeting_criteria_languages" do
    it "returns Array(TwitterAds::TargetingCriteriaLanguage)" do
      api.size.should eq 1
      
      i = api.first
      i.name.should eq "English"
      i.targeting_type.should eq "LANGUAGE"
      i.targeting_value.should eq "en"
    end

    it "can be converted to pb." do
      api.each &.to_pb
    end
  end
end
