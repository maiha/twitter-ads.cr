require "../../spec_helper"

describe TwitterAds::Api::CustomAudiences do
  client = Mock::Client.new("CK", "CS", "AT", "AS")

  describe "#custom_audiences" do
    it "returns Array(TwitterAds::CustomAudiences)" do
      custom_audiences = client.custom_audiences("18ce54d4x5t")
      custom_audiences.size.should eq 1
      
      custom_audience = custom_audiences.first
      custom_audience.id.should eq "1nmth"
      custom_audience.name.should eq "twurl-using-subshell-for-file"
      custom_audience.targetable.should eq true
      custom_audience.audience_type.should eq "CRM"
      custom_audience.owner_account_id.should eq "18ce54d4x5t"
      custom_audience.audience_size.should eq 1470
      custom_audience.account_id.should eq "18ce54d4x5t"
    end

    it "accepts with_deleted, with_draft options" do
      # check only syntax
      client.custom_audiences("18ce54d4x5t", with_deleted: true)
    end
  end
end
