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
      campaign.account_id.should eq "18ce54d4x5t"
    end

    it "accepts with_deleted, with_draft options" do
      # check only syntax
      client.campaigns("18ce54d4x5t", with_deleted: true, with_draft: true)
    end
  end
end
