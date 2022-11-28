require "../../spec_helper"

describe TwitterAds::Api::TargetingCriteriaTvMarkets do
  client = Mock::Client.new("CK", "CS", "AT", "AS")
  api = client.targeting_criteria_tv_markets

  describe "#targeting_criteria_tv_markets" do
    it "returns Array(TwitterAds::TargetingCriteriaTvMarket)" do
      api.size.should eq 17

      i = api.first
      i.name.should eq "France"
      i.country_code.should eq "FR"
      i.locale.should eq "fr-FR"
    end

    it "can be converted to pb." do
      api.each &.to_pb
    end
  end
end
