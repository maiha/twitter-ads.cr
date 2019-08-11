class TwitterAds::CardsImageConversation
  var account_id : String

  JSON.mapping({
    id:                   String  , # "59woh"
    card_type:            String? , # "IMAGE_CONVERSATION"
    card_uri:             String? , # "card://923498485702009837"
    name:                 String? , # "image conversation card"
    title:                String? , # "Full moon"
    first_cta:            String? , # "#moon"
    first_cta_tweet:      String? , # "stars"
    image:                String? , # "https://pbs.twimg.com/media/DUhZuzxUQAAWZqr.jpg"
    image_display_width:  String? , # "1280"
    image_display_height: String? , # "670"
    thank_you_text:       String? , # "thanks"
    created_at:           String? , # "2018-01-27T04:58:42Z"
    updated_at:           String? , # "2018-01-27T04:58:42Z"
    deleted:              Bool?   , # false
  })

  def to_pb
    TwitterAds::Proto::CardsImageConversation.new(
      id: id,
      card_type: card_type,
      card_uri: card_uri,
      name: name,
      title: title,
      first_cta: first_cta,
      first_cta_tweet: first_cta_tweet,
      image: image,
      image_display_width: image_display_width,
      image_display_height: image_display_height,
      thank_you_text: thank_you_text,
      created_at: created_at,
      updated_at: updated_at,
      deleted: deleted,

      account_id: account_id,
    )
  end
end
