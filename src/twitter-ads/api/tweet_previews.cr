module TwitterAds::Api
  class TweetPreviews < TwitterAds::Response
    enum TweetType
      DRAFT
      PUBLISHED
      SCHEDULED
    end

    resource_collection TweetPreview

    belongs_to account_id : String
  end
end

class TwitterAds::Client
  def tweet_previews(account_id : String, tweet_type : String | Api::TweetPreviews::TweetType, tweet_ids : Array(Int64)) : Api::TweetPreviews

    # validate tweet_type
    if tweet_type.is_a?(String)
      if type = Api::TweetPreviews::TweetType.parse?(tweet_type)
        tweet_type = type
      else
        got = tweet_type.inspect
        exp = Api::TweetPreviews::TweetType.values.map(&.to_s).inspect
        raise ArgumentError.new("TweetType Error: got #{got}, expected one of #{exp}")
      end
    end
    tweet_type = type.to_s

    res = get("/5/accounts/#{account_id}/tweet_previews.json", {"tweet_type" => tweet_type, "tweet_ids" => tweet_ids.map(&.to_s).join(",")})
    Api::TweetPreviews.new(res, account_id: account_id)
  end
end
