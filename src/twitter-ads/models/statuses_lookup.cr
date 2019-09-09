class TwitterAds::StatusesLookup
  JSON.mapping({
    created_at:                String? , # "Tue Mar 21 20:50:14 +0000 2006"
    id:                        Int64   , # 20
    id_str:                    String? , # "20"
    text:                      String? , # "just setting up my twttr"
    truncated:                 Bool?   , # false
    source:                    String? , # "..."
    in_reply_to_status_id:     Int64?  , # nil
    in_reply_to_status_id_str: String? , # nil
    in_reply_to_user_id:       Int64?  , # nil
    in_reply_to_user_id_str:   String? , # nil
    in_reply_to_screen_name:   String? , # nil
    geo:                       String? , # nil
    coordinates:               String? , # nil
    place:                     String? , # nil
    contributors:              String? , # nil
    is_quote_status:           Bool?   , # false
    retweet_count:             Int64?  , # 111160
    favorite_count:            Int64?  , # 98090
    favorited:                 Bool?   , # false
    retweeted:                 Bool?   , # false
    lang:                      String? , # "en"
  })

  def to_pb
    TwitterAds::Proto::StatusesLookup.new(
      created_at: created_at,
      id: id,
      id_str: id_str,
      text: text,
      truncated: truncated,
      source: source,
      in_reply_to_status_id: in_reply_to_status_id,
      in_reply_to_status_id_str: in_reply_to_status_id_str,
      in_reply_to_user_id: in_reply_to_user_id,
      in_reply_to_user_id_str: in_reply_to_user_id_str,
      in_reply_to_screen_name: in_reply_to_screen_name,
      geo: geo,
      coordinates: coordinates,
      place: place,
      contributors: contributors,
      is_quote_status: is_quote_status,
      retweet_count: retweet_count,
      favorite_count: favorite_count,
      favorited: favorited,
      retweeted: retweeted,
      lang: lang,
    )
  end
end
