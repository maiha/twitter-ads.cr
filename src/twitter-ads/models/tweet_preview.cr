class TwitterAds::TweetPreview
  var account_id : String

  JSON.mapping({
    tweet_id:   String? , # "1122911801354510336"
    preview:    String? , # "<iframe class='tweet-preview' src='https://ton.twimg.com/ads-manager/tweet-preview/index.html?...'>"
  })

  def to_pb
    TwitterAds::Proto::TweetPreview.new(
      tweet_id: tweet_id,
      preview: preview,

      account_id: account_id,
    )
  end
end
