require "../../spec_helper"

describe TwitterAds::Api::FundingInstruments do  
  client = Mock::Client.new("CK", "CS", "AT", "AS")

  describe "#funding_instruments" do
    it "returns Api::FundingInstruments" do
      i = client.funding_instruments("18ce54d4x5t").first
      i.id.should eq "lygyi"
      i.type.should eq "CREDIT_CARD"
      i.account_id.should eq "18ce54d4x5t"
    end
  end
end
