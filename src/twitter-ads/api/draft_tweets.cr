module TwitterAds::Api
  class DraftTweets < TwitterAds::Response
    resource_collection DraftTweet

    belongs_to account_id : String
  end
end

class TwitterAds::Client
  def draft_tweets(account_id : String, count : Int32 = 200, cursor : String = "") : Api::DraftTweets
    res = get("/#{api_version}/accounts/#{account_id}/draft_tweets#{api_suffix}", {"count" => count.to_s, "cursor" => cursor})
    Api::DraftTweets.new(res, account_id: account_id)
  end
end
