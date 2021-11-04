require "../../spec_helper"

describe TwitterAds::Api::TargetingCriteriaTvMarkets do
  client = Mock::Client.new("CK", "CS", "AT", "AS")

  describe "#targeting_criteria_tv_markets" do
    it "returns Array(TwitterAds::TargetingCriteriaTvMarket)" do
      res = client.targeting_criteria_tv_markets
      i = res.first

      i.name.should eq "France"
      i.country_code.should eq "FR"
      i.locale.should eq "fr-FR"
    end
  end
end
