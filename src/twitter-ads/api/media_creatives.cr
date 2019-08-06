module TwitterAds::Api
  class MediaCreatives < TwitterAds::Response
    resource_collection MediaCreative

    belongs_to account_id : String
  end
end

class TwitterAds::Client
  def media_creatives(account_id : String, count : Int32 = 200, cursor : String = "") : Api::MediaCreatives
    res = get("/5/accounts/#{account_id}/media_creatives.json", {"count" => count.to_s, "cursor" => cursor})
    Api::MediaCreatives.new(res, account_id: account_id)
  end
end
