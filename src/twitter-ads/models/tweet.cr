class TwitterAds::Tweet
  var account_id : String

  JSON.mapping({
    retweeted:                 Bool?   , # false
    source:                    String? , # "<a href=\"https://ads-api.twitter.com\" rel=\"nofollow\">Twitter for Advertisers (legacy)</a>"
    favorite_count:            Int64?  , # 0
    in_reply_to_status_id_str: String? , # nil
    id_str:                    String? , # "1166476031668015104"
    in_reply_to_user_id:       Int64?  , # 123456
    truncated:                 Bool?   , # false
    retweet_count:             Int64?  , # 0
    scheduled_status:          String? , # "SCHEDULED"
    id:                        Int64   , # 1166476031668015000
    in_reply_to_status_id:     Int64?  , # 123456
    nullcast:                  Bool?   , # true
    created_at:                String? , # "Tue Aug 27 22:22:12 +0000 2019"
    place:                     String? , # nil
    scheduled_at:              String? , # nil
    tweet_type:                String? , # "PUBLISHED"
    favorited:                 Bool?   , # false
    card_uri:                  String? , # "card://957050688416112640"
    full_text:                 String? , # "hello, v6"
    lang:                      String? , # "es"
    in_reply_to_screen_name:   String? , # nil
    in_reply_to_user_id_str:   String? , # nil
    tweet_id:                  String? , # "1166476031668015104"
    user:                      User?   , # {"id" => 756201191646691300, "id_str" => "756201191646691328"}
  })

  def user_id : Int64?
    user.try(&.id)
  end

  def user_name : String?
    user.try(&.name)
  end

  def user_screen_name : String?
    user.try(&.screen_name)
  end

  def to_pb
    TwitterAds::Proto::Tweet.new(
      retweeted: retweeted,
      source: source,
      favorite_count: favorite_count,
      in_reply_to_status_id_str: in_reply_to_status_id_str,
      id_str: id_str,
      in_reply_to_user_id: in_reply_to_user_id,
      truncated: truncated,
      retweet_count: retweet_count,
      scheduled_status: scheduled_status,
      id: id,
      in_reply_to_status_id: in_reply_to_status_id,
      nullcast: nullcast,
      created_at: created_at,
      place: place,
      scheduled_at: scheduled_at,
      tweet_type: tweet_type,
      favorited: favorited,
      card_uri: card_uri,
      full_text: full_text,
      lang: lang,
      in_reply_to_screen_name: in_reply_to_screen_name,
      in_reply_to_user_id_str: in_reply_to_user_id_str,
      tweet_id: tweet_id,
      user_id: user_id,
      account_id: account_id?,
      user_name: user_name,
      user_screen_name: user_screen_name,
    )
  end
end
