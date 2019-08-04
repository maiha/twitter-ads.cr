require "../../spec_helper"

describe TwitterAds::Api::CardsWebsite do
  client = Mock::Client.new("CK", "CS", "AT", "AS")

  describe "#cards_website" do
    it "returns Array(TwitterAds::CardsWebsite)" do
      websites = client.cards_website("18ce54d4x5t")
      websites.size.should eq 1

      website = websites.first
      website.id.should eq "59wh0"
      website.name.should eq "website card"
    end
  end
end
