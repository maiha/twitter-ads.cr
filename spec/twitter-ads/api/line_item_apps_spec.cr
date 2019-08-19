require "../../spec_helper"

describe TwitterAds::Api::LineItemApps do  
  client = Mock::Client.new("CK", "CS", "AT", "AS")

  describe "#line_item_apps" do
    it "returns Api::LineItemApps" do
      i = client.line_item_apps("18ce54d4x5t").first
      i.id.should eq "1eegy"
      i.os_type.should eq "Android"
      i.account_id.should eq "18ce54d4x5t"
    end

    it "accepts with_deleted" do
      # check only syntax
      client.line_item_apps("18ce54d4x5t", with_deleted: true)
    end
  end
end
