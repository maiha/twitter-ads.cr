require "../../spec_helper"

describe TwitterAds::Api::LineItems do
  client = Mock::Client.new("CK", "CS", "AT", "AS")
  api = client.line_items("18ce54d4x5t")

  describe "#line_items" do
    it "returns Array(TwitterAds::LineItem)" do
      api.size.should eq 1

      item = api.first
      item.id.should eq "8v7jo"
      item.name.should eq "Untitled"
      item.account_id.should eq "18ce54d4x5t"
    end

    it "accepts with_deleted, with_draft options" do
      # check only syntax
      client.line_items("18ce54d4x5t", with_deleted: true, with_draft: true)
    end

    it "can be converted to pb." do
      api.each &.to_pb
    end
  end
end
