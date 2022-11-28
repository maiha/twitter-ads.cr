require "../../spec_helper"

describe TwitterAds::Api::MediaCreatives do  
  client = Mock::Client.new("CK", "CS", "AT", "AS")
  api = client.media_creatives("18ce54d4x5t")

  describe "#media_creatives" do
    it "returns Api::MediaCreatives" do
      api.size.should eq(1)
      
      i = api.first
      i.id.should eq "1bzq3"
      i.line_item_id.should eq "8v7jo"
      i.account_id.should eq "18ce54d4x5t"
    end

    it "accepts with_deleted" do
      # check only syntax
      client.media_creatives("18ce54d4x5t", with_deleted: true)
    end

    it "can be converted to pb." do
      api.each &.to_pb
    end
  end
end
