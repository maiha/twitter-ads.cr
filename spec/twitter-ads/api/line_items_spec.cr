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
    end
  end
end
