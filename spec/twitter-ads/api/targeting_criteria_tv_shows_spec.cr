require "../../spec_helper"

describe TwitterAds::Api::TargetingCriteriaTvShows do
  client = Mock::Client.new("CK", "CS", "AT", "AS")
  api = client.targeting_criteria_tv_shows("en-US", q: "news", count: 1)

  describe "#targeting_criteria_tv_shows" do
    it "returns Array(TwitterAds::TargetingCriteriaTvShow)" do
      api.size.should eq 1

      i = api.first
      i.name.should eq "NewsWatch"
      i.genre.should eq "PAID"
      i.targeting_value.should eq 10027243420
    end

    it "can be converted to pb." do
      api.each &.to_pb
    end
  end
end
