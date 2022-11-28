require "../../spec_helper"

describe TwitterAds::Api::AccountMedia do
  client = Mock::Client.new("CK", "CS", "AT", "AS")
  api = client.account_media("18ce54d4x5t")

  describe "#account_medial" do
    it "returns Array(TwitterAds::AccountMedia)" do
      api.size.should eq 1

      account_media = api.first
      account_media.id.should eq "3wpx"
      account_media.creative_type.should eq "PREROLL"
      account_media.account_id.should eq "18ce54d4x5t"
    end

    it "can be converted to pb." do
      api.each &.to_pb
    end
  end
end
