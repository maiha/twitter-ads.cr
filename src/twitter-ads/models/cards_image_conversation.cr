class TwitterAds::CardsImageConversation
  var account_id : String

  JSON.mapping({
    card_type:                  String? , # "IMAGE_CONVERSATION"
    card_uri:                   String? , # "card://923498485702009837"
    cover_image_url:            String? , # "https://pbs.twimg.com/..."
    cover_image_display_height: String? , # "96"
    cover_image_display_width:  String? , # "240"
    created_at:                 String? , # "2018-01-27T04:58:42Z"
    deleted:                    Bool?   , # false
    id:                         String  , # "59woh"
    image_display_height:       String? , # "96"
    image_display_width:        String? , # "240"
    media_url:                  String? , # "https://pbs.twimg.com/media/DUhZuzxUQAAWZqr.jpg"
    updated_at:                 String? , # "2018-01-27T04:58:42Z"
    media_key:                  String? , # "3_957113581522141184"
    name:                       String? , # "image conversation card"
    first_cta:                  String? , # "#moon"
    first_cta_tweet:            String? , # "stars"
    second_cta:                 String? , # "#2nd"
    second_cta_tweet:           String? , # "2nd text"
    third_cta:                  String? , # "#3rd"
    third_cta_tweet:            String? , # "3rd text"
    fourth_cta:                 String? , # "#4th"
    fourth_cta_tweet:           String? , # "4th text"
    thank_you_dest_url:         String? , # "https://..."
    thank_you_display_url:      String? , # ""
    thank_you_shortened_url:    String? , # "https://t.co/..."
    thank_you_text:             String? , # "thanks"
    thank_you_url:              String? , # ""
    title:                      String? , # "Full moon"
  })

  def to_pb
    TwitterAds::Proto::CardsImageConversation.new(
      card_type: card_type,
      card_uri: card_uri,
      cover_image_url: cover_image_url,
      cover_image_display_height: cover_image_display_height,
      cover_image_display_width: cover_image_display_width,
      created_at: created_at,
      deleted: deleted,
      id: id,
      image_display_height: image_display_height,
      image_display_width: image_display_width,
      media_url: media_url,
      updated_at: updated_at,
      media_key: media_key,
      name: name,
      first_cta: first_cta,
      first_cta_tweet: first_cta_tweet,
      second_cta: second_cta,
      second_cta_tweet: second_cta_tweet,
      third_cta: third_cta,
      third_cta_tweet: third_cta_tweet,
      fourth_cta: fourth_cta,
      fourth_cta_tweet: fourth_cta_tweet,
      thank_you_dest_url: thank_you_dest_url,
      thank_you_display_url: thank_you_display_url,
      thank_you_shortened_url: thank_you_shortened_url,
      thank_you_text: thank_you_text,
      thank_you_url: thank_you_url,
      title: title,
      account_id: account_id,
    )
  end
end
