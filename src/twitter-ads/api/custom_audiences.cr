# https://developer.twitter.com/en/docs/twitter-ads-api/audiences/api-reference/custom-audiences

module TwitterAds::Api
  class CustomAudiences < TwitterAds::Response
    resource_collection CustomAudience

    belongs_to account_id : String
  end
end

class TwitterAds::Client
  def custom_audiences(account_id : String, with_deleted : Bool = false, count : Int32 = 200, cursor : String = "") : Api::CustomAudiences
    opts = {"count" => count.to_s, "cursor" => cursor}
    opts["with_deleted"] = "true" if with_deleted
    res = get("/#{api_version}/accounts/#{account_id}/custom_audiences#{api_suffix}", opts)
    Api::CustomAudiences.new(res, account_id: account_id)
  end
end
