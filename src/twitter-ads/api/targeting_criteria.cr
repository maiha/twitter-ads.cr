# https://developer.twitter.com/en/docs/ads/campaign-management/api-reference/targeting-criteria

module TwitterAds::Api
  class TargetingCriteria < TwitterAds::Response
    resource_collection TargetingCriteria

    belongs_to account_id : String
  end
end

class TwitterAds::Client
  def targeting_criteria(account_id : String, line_item_ids : Array(String), with_deleted : Bool = false, count : Int32 = 200, cursor : String = "") : Api::TargetingCriteria
    opts = {"line_item_ids" => line_item_ids.join(","), "count" => count.to_s, "cursor" => cursor}
    opts["with_deleted"] = "true" if with_deleted
    res = get("/#{api_version}/accounts/#{account_id}/targeting_criteria.json", opts)
    Api::TargetingCriteria.new(res, account_id: account_id)
  end
end
