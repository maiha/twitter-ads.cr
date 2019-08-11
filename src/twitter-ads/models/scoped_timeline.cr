class TwitterAds::ScopedTimeline
  var account_id : String

  class User
    JSON.mapping({
      id:                        Int64         , # 880950824339419100
    })
  end

  JSON.mapping({
    id:                        Int64         , # 880950824339419100
    lang:                      String?       , # "en"
    truncated:                 Bool?         , # false
    favorited:                 Bool?         , # false
    retweeted:                 Bool?         , # false
    favorite_count:            Int64?        , # 0
    retweet_count:             Int64?        , # 0
    text:                      String?       , # "hello, world"
    contributors:              Array(Int64)? , # [2417045708]
    coordinates:               String?       , # nil
    geo:                       String?       , # nil
    place:                     String?       , # nil
    source:                    String?       , # "<a href='https://ads-api.twitter.com' rel='nofollow'>Ads API Internal Test App</a>"
    in_reply_to_status_id:     Int64?        , # nil
    in_reply_to_status_id_str: String?       , # nil
    in_reply_to_user_id:       Int64?        , # nil
    in_reply_to_user_id_str:   String?       , # nil
    in_reply_to_screen_name:   String?       , # nil
    user:                      User?         , # {"id" => 756201191646691300, "id_str" => "756201191646691328"}
    id_str:                    String?       , # "880950824339419136"
    created_at:                String?       , # "Sat Jul 01 00:46:58 +0000 2017"
  })

  def user_id
    user.try(&.id)
  end  

  def to_pb
    TwitterAds::Proto::ScopedTimeline.new(
      id: id,
      lang: lang,
      truncated: truncated,
      favorited: favorited,
      retweeted: retweeted,
      favorite_count: favorite_count,
      retweet_count: retweet_count,
      text: text,
      contributors: contributors,
      coordinates: coordinates,
      geo: geo,
      place: place,
      source: source,
      in_reply_to_status_id: in_reply_to_status_id,
      in_reply_to_status_id_str: in_reply_to_status_id_str,
      in_reply_to_user_id: in_reply_to_user_id,
      in_reply_to_user_id_str: in_reply_to_user_id_str,
      in_reply_to_screen_name: in_reply_to_screen_name,
      user_id: user_id,
      id_str: id_str,
      created_at: created_at,

      account_id: account_id,
    )
  end
end
