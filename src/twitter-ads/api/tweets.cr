# https://developer.twitter.com/en/docs/twitter-ads-api/creatives/api-reference/tweets

module TwitterAds::Api
  class Tweets < TwitterAds::Response
    enum TweetType
      DRAFT
      PUBLISHED
      SCHEDULED
    end

    enum TimelineType
      ALL
      NULLCAST
      ORGANIC
    end

    resource_collection Tweet

    belongs_to account_id : String
  end
end

class TwitterAds::Client
  def tweets(account_id : String, tweet_type : String | Api::Tweets::TweetType = "PUBLISHED", include_mentions_and_replies : Bool = false, timeline_type : String | Api::Tweets::TimelineType = "NULLCAST", trim_user : Bool = false, tweet_ids : String? = nil, user_id : Int64? = nil, count : Int32 = 200, cursor : String = "") : Api::Tweets

    tweet_type    = Api::Tweets::TweetType.parse(tweet_type)       if tweet_type.is_a?(String)
    timeline_type = Api::Tweets::TimelineType.parse(timeline_type) if timeline_type.is_a?(String)

    opts = {
      "count"      => count.to_s,
      "cursor"     => cursor,
      "tweet_type" => tweet_type.to_s,
      "include_mentions_and_replies" => include_mentions_and_replies.to_s,
      "timeline_type" => timeline_type.to_s,
      "trim_user" => trim_user.to_s,
    }

    opts["tweet_ids"] = tweet_ids    if tweet_ids
    opts["user_id"]   = user_id.to_s if user_id
    
    res = get("/#{api_version}/accounts/#{account_id}/tweets#{api_suffix}", opts)
    Api::Tweets.new(res, account_id: account_id)
  end
end
