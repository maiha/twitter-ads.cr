require "../../spec_helper"

describe TwitterAds::Api::ScopedTimeline do
  client = Mock::Client.new("CK", "CS", "AT", "AS")

  describe "#scoped_timeline" do
    it "returns Array(TwitterAds::ScopedTimeline)" do
      scoped_timelines = client.scoped_timeline("18ce54d4x5t")
      scoped_timelines.size.should eq 1

      scoped_timeline = scoped_timelines.first
      scoped_timeline.id.should eq 880950824339419136
      scoped_timeline.user_id.should eq 756201191646691328
      scoped_timeline.text.should eq "hello, world"
      scoped_timeline.account_id.should eq "18ce54d4x5t"
    end
  end
end
