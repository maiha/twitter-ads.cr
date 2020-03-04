module TwitterAds::Api
  class MediaLibrary < TwitterAds::Response
    resource_collection MediaLibrary

    belongs_to account_id : String
  end
end

class TwitterAds::Client
  def media_library(account_id : String, count : Int32 = 200, cursor : String = "") : Api::MediaLibrary
    res = get("/#{api_version}/accounts/#{account_id}/media_library.json", {"count" => count.to_s, "cursor" => cursor})
    Api::MediaLibrary.new(res, account_id: account_id)
  end
end
