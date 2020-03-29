require "../../spec_helper"

describe TwitterAds::Api::Stats do
  client = Mock::Client.new("CK", "CS", "AT", "AS")

  describe "Client#stats" do
    it "returns TwitterAds::Api::Stats" do
      stats = client.stats(
        account_id: "18ce54d4x5t",
        entity: :line_item,
        entity_ids: ["aaaa1", "aaaa2"],
        start_time: "2020-03-29T15:00:00Z",
        end_time: "2020-03-31T15:00:00Z",
        metrics: ["ENGAGEMENT"],
        granularity: "DAY",
        placement: "ALL_ON_TWITTER",
      )

      ######################################################################
      ### api
      api = stats.api
      api.code.should eq 200

      ######################################################################
      ### model
      stats.account_id.should eq "18ce54d4x5t"
      stats.data_type.should eq "stats"
      stats.time_series_length.should eq 2

      # request.params
      params = stats.request.params
      params.entity.should eq "LINE_ITEM"
      params.entity_ids.should eq ["aaaa1", "aaaa2"]
    end
  end
end
