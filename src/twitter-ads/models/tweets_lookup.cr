class TwitterAds::TweetsLookup
  JSON.mapping({
    author_id:       String? , # "2244994945"
    conversation_id: String? , # "1228393702244134912"
    created_at:      String? , # "2020-02-14T19:00:55.000Z"
    lang:            String? , # "en"
    id:              String  , # "1228393702244134912"
    reply_settings:  String? , # "everyone"
    source:          String? , # "Twitter Web App"
    text:            String? , # "What did the developer write in their Valentine’s card?\n  \nwhile(true) {\n    I = Love(You);  \n}"
  })
  def to_pb
    TwitterAds::Proto::TweetsLookup.new(
      author_id: author_id,
      conversation_id: conversation_id,
      created_at: created_at,
      lang: lang,
      id: id,
      reply_settings: reply_settings,
      source: source,
      text: text,
    )
  end
end
