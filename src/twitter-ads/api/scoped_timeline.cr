module TwitterAds::Api
  class ScopedTimeline < TwitterAds::Response
    resource_collection ScopedTimeline

    belongs_to account_id : String
  end
end

class TwitterAds::Client
  def scoped_timeline(account_id : String, count : Int32 = 200, cursor : String = "") : Api::ScopedTimeline
    res = get("/#{api_version}/accounts/#{account_id}/scoped_timeline#{api_suffix}", {"count" => count.to_s, "cursor" => cursor})
    Api::ScopedTimeline.new(res, account_id: account_id)
  end
end
