require "../../spec_helper"

describe TwitterAds::Api::Campaigns do
  client = Mock::Client.new("CK", "CS", "AT", "AS")

  describe "#campaigns" do
    it "returns Array(TwitterAds::Campaign)" do
      campaigns = client.campaigns("18ce54d4x5t")
      campaigns.size.should eq 1

      campaign = campaigns.first
      campaign.id.should eq "8wku2"
      campaign.name.should eq "batch campaigns"
    end
  end
end
