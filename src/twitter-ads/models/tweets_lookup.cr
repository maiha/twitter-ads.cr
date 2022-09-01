class TwitterAds::TweetsLookup
  JSON.mapping({
    possibly_sensitive: Bool?   , # false
    author_id:          String? , # "2244994945"
    text:               String? , # "Our mission remains just as important as ever: to deliver an open platform that serves the public conversation. We’re continuing to innovate on the Twitter API v2 and invest in our developer community 🧵\n\nhttps://t.co/Rug1l46sUc"
    reply_settings:     String? , # "everyone"
    conversation_id:    String? , # "1519781379172495360"
    created_at:         String? , # "2022-04-28T20:51:31.000Z"
    id:                 String  , # "1519781379172495360"
    lang:               String? , # "en"
    source:             String? , # "TweetDeck Web App"
  })

  def to_pb
    TwitterAds::Proto::TweetsLookup.new(
      possibly_sensitive: possibly_sensitive,
      author_id: author_id,
      text: text,
      reply_settings: reply_settings,
      conversation_id: conversation_id,
      created_at: created_at,
      id: id,
      lang: lang,
      source: source,
    )
  end
end
