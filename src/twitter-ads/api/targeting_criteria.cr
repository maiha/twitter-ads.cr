module TwitterAds::Api
  class TargetingCriteria < TwitterAds::Response
    resource_collection TwitterAds::TargetingCriteria

    belongs_to account_id : String
  end
end

class TwitterAds::Client
  def targeting_criteria(account_id : String, line_item_ids : Array(String), count : Int32 = 200, cursor : String = "") : Api::TargetingCriteria
    res = get("/5/accounts/#{account_id}/targeting_criteria.json", {"line_item_ids" => line_item_ids.join(","), "count" => count.to_s, "cursor" => cursor})
    Api::TargetingCriteria.new(res, account_id: account_id)
  end
end
