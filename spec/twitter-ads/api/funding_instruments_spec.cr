require "../../spec_helper"

describe TwitterAds::Api::FundingInstruments do  
  client = Mock::Client.new("CK", "CS", "AT", "AS")
  api = client.funding_instruments("18ce54d4x5t")

  describe "#funding_instruments" do
    it "returns Api::FundingInstruments" do
      api.size.should eq 1

      i = api.first
      i.id.should eq "lygyi"
      i.type.should eq "CREDIT_CARD"
      i.account_id.should eq "18ce54d4x5t"
    end

    it "can be converted to pb." do
      api.each &.to_pb
    end
  end
end
