require "../../spec_helper"

describe TwitterAds::Api::TargetingCriteriaTvShows do
  client = Mock::Client.new("CK", "CS", "AT", "AS")

  describe "#targeting_criteria_tv_shows" do
    it "returns Array(TwitterAds::TargetingCriteriaTvShow)" do
      res = client.targeting_criteria_tv_shows("en-US", q: "news", count: 1)
      i = res.first

      i.id.should eq 10051997516
      i.name.should eq "Boston 25 News Special: Coming Home"
      i.genre.should eq "SPECIAL"
    end
  end
end
