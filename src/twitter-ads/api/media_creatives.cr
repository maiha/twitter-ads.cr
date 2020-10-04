# https://developer.twitter.com/en/docs/ads/campaign-management/api-reference/media-creatives

module TwitterAds::Api
  class MediaCreatives < TwitterAds::Response
    resource_collection MediaCreative

    belongs_to account_id : String
  end
end

class TwitterAds::Client
  def media_creatives(account_id : String, with_deleted : Bool = false, count : Int32 = 200, cursor : String = "") : Api::MediaCreatives
    opts = {"count" => count.to_s, "cursor" => cursor}
    opts["with_deleted"] = "true" if with_deleted
    res = get("/#{api_version}/accounts/#{account_id}/media_creatives#{api_suffix}", opts)
    Api::MediaCreatives.new(res, account_id: account_id)
  end
end
