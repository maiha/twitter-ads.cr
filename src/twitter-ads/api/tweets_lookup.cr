module TwitterAds::Api
  class TweetsLookup < TwitterAds::Response
    resource_none

  end
end

class TwitterAds::Client
  def tweets_lookup(id : String | Array(String)) : Api::TweetsLookup
    ids = id.is_a?(String) ? [id] : id
    opts = {
      "ids" => ids.join(","),
      "tweet.fields" => "reply_settings,author_id,lang,source,created_at,conversation_id",
    }
    res = get("/2/tweets", opts)
    Api::TweetsLookup.new(res)
  end 
end
