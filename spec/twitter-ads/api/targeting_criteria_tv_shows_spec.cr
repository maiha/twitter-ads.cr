require "../../spec_helper"

describe TwitterAds::Api::TargetingCriteriaTvShows do
  client = Mock::Client.new("CK", "CS", "AT", "AS")

  describe "#targeting_criteria_tv_shows" do
    it "returns Array(TwitterAds::TargetingCriteriaTvShow)" do
      res = client.targeting_criteria_tv_shows("en-US", q: "news", count: 1)
      i = res.first
      i.name.should eq "NewsWatch"
      i.genre.should eq "PAID"
      i.targeting_value.should eq 10027243420
    end
  end
end
