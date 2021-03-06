module TwitterAds::Api
  class PrerollCallToActions < TwitterAds::Response
    resource_collection PrerollCallToAction

    belongs_to account_id : String
  end
end

class TwitterAds::Client
  def preroll_call_to_actions(account_id : String, count : Int32 = 200, cursor : String = "") : Api::PrerollCallToActions
    res = get("/#{api_version}/accounts/#{account_id}/preroll_call_to_actions#{api_suffix}", {"count" => count.to_s, "cursor" => cursor})
    Api::PrerollCallToActions.new(res, account_id: account_id)
  end
end
