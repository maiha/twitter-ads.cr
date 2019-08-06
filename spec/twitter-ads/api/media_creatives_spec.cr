require "../../spec_helper"

describe TwitterAds::Api::MediaCreatives do  
  client = Mock::Client.new("CK", "CS", "AT", "AS")

  describe "#media_creatives" do
    it "returns Api::MediaCreatives" do
      i = client.media_creatives("18ce54d4x5t").first
      i.id.should eq "1bzq3"
      i.line_item_id.should eq "8v7jo"
      i.account_id.should eq "18ce54d4x5t"
    end
  end
end
