require "../../spec_helper"

describe TwitterAds::Api::TargetingCriteriaTvMarkets do
  client = Mock::Client.new("CK", "CS", "AT", "AS")

  describe "#targeting_criteria_tv_markets" do
    it "returns Array(TwitterAds::TargetingCriteriaTvMarket)" do
      res = client.targeting_criteria_tv_markets
      i = res.first

      i.id.should eq "6"
      i.name.should eq "France"
      i.country_code.should eq "FR"
    end
  end
end
