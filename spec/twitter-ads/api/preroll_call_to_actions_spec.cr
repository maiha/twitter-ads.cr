require "../../spec_helper"

describe TwitterAds::Api::PrerollCallToActions do
  client = Mock::Client.new("CK", "CS", "AT", "AS")
  api = client.preroll_call_to_actions("18ce54d4x5t")

  describe "#preroll_call_to_actions" do
    it "returns Array(TwitterAds::PrerollCallToAction)" do
      api.size.should eq 1

      preroll_call_to_action = api.first
      preroll_call_to_action.id.should eq "8f0"
      preroll_call_to_action.line_item_id.should eq "8v53k"
      preroll_call_to_action.call_to_action.should eq "VISIT_SITE"
      preroll_call_to_action.call_to_action_url.should eq "https://www.twitter.com"
      preroll_call_to_action.account_id.should eq "18ce54d4x5t"
    end

    it "can be converted to pb." do
      api.each &.to_pb
    end
  end
end
