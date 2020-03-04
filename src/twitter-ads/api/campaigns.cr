# https://developer.twitter.com/en/docs/ads/campaign-management/api-reference/campaigns

module TwitterAds::Api
  class Campaigns < TwitterAds::Response
    resource_collection Campaign

    belongs_to account_id : String
  end
end

class TwitterAds::Client
  def campaigns(account_id : String, with_deleted : Bool = false, with_draft : Bool = false, count : Int32 = 200, cursor : String = "") : Api::Campaigns
    opts = {"count" => count.to_s, "cursor" => cursor}
    opts["with_deleted"] = "true" if with_deleted
    opts["with_draft"]   = "true" if with_draft
    res = get("/#{api_version}/accounts/#{account_id}/campaigns.json", opts)
    Api::Campaigns.new(res, account_id: account_id)
  end
end
