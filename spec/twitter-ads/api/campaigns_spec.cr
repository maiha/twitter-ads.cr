require "../../spec_helper"

describe TwitterAds::Api::Campaigns do
  client = Mock::Client.new("CK", "CS", "AT", "AS")
  api = client.campaigns("18ce54d4x5t")

  describe "#campaigns" do
    it "returns Array(TwitterAds::Campaign)" do
      api.size.should eq 1

      campaign = api.first
      campaign.id.should eq "8wku2"
      campaign.name.should eq "batch campaigns"
      campaign.account_id.should eq "18ce54d4x5t"
    end

    it "accepts with_deleted, with_draft options" do
      # check only syntax
      client.campaigns("18ce54d4x5t", with_deleted: true, with_draft: true)
    end

    it "can be converted to pb." do
      api.each &.to_pb
    end
  end
end
