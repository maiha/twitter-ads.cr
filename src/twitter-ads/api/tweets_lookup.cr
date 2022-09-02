module TwitterAds::Api
  class TweetsLookup < TwitterAds::Response
    resource_collection TweetsLookup

  end
end

class TwitterAds::Client
  def tweets_lookup(id : String | Array(String), expansions : String = "", tweet_fields : String = "", media_fields : String = "", place_fields : String = "", poll_fields : String = "", user_fields : String = "") : Api::TweetsLookup
    ids = id.is_a?(String) ? [id] : id
    opts = {
      "ids" => ids.join(","),
      "expansions" => expansions,
      "tweet.fields" => tweet_fields,
      "media.fields" => media_fields,
      "place.fields" => place_fields,
      "poll.fields" => poll_fields,
      "user.fields" => user_fields
    }
    res = get("/2/tweets", opts)
    Api::TweetsLookup.new(res)
  end 
end
