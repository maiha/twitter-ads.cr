require "../../spec_helper"

describe TwitterAds::Api::LineItems do
  client = Mock::Client.new("CK", "CS", "AT", "AS")

  describe "#line_items" do
    it "returns Array(TwitterAds::LineItem)" do
      items = client.line_items("18ce54d4x5t")
      items.size.should eq 1

      item = items.first
      item.id.should eq "8v7jo"
      item.name.should eq "Untitled"
      item.account_id.should eq "18ce54d4x5t"
    end

    it "accepts with_deleted, with_draft options" do
      # check only syntax
      client.line_items("18ce54d4x5t", with_deleted: true, with_draft: true)
    end
  end
end
