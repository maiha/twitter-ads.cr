require "../../spec_helper"

describe TwitterAds::Api::PrerollCallToActions do
  client = Mock::Client.new("CK", "CS", "AT", "AS")

  describe "#scheduled_tweets" do
    it "returns Array(TwitterAds::PrerollCallToAction)" do
      preroll_call_to_actions = client.preroll_call_to_actions("18ce54d4x5t")
      preroll_call_to_actions.size.should eq 1

      preroll_call_to_action = preroll_call_to_actions.first
      preroll_call_to_action.id.should eq "8f0"
      preroll_call_to_action.line_item_id.should eq "8v53k"
      preroll_call_to_action.call_to_action.should eq "VISIT_SITE"
      preroll_call_to_action.call_to_action_url.should eq "https://www.twitter.com"
      preroll_call_to_action.account_id.should eq "18ce54d4x5t"
    end
  end
end
