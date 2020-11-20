class TwitterAds::CardsImageDirectMessage
  var account_id : String

  JSON.mapping({
    card_type:                    String? , # "IMAGE_DIRECT_MESSAGE"
    card_uri:                     String? , # "card://957127157993500678"
    created_at:                   String? , # "2018-01-27T05:44:31Z"
    deleted:                      Bool?   , # false
    first_cta:                    String? , # "DM me"
    first_cta_welcome_message_id: String? , # "865707372148174852"
    id:                           String  , # "59wpi"
    image_display_height:         String? , # "418"
    image_display_width:          String? , # "800"
    media_key:                    String? , # "3_957000624519835648"
    media_url:                    String? , # "https://pbs.twimg.com/media/DUfy_2JU8AAMAOk.jpg"
    name:                         String? , # "space card"
    recipient_user_id:            String? , # "756201191646691328"
    updated_at:                   String? , # "2018-01-30T01:33:49Z"
  })

  def to_pb
    TwitterAds::Proto::CardsImageDirectMessage.new(
      card_type: card_type,
      card_uri: card_uri,
      created_at: created_at,
      deleted: deleted,
      first_cta: first_cta,
      first_cta_welcome_message_id: first_cta_welcome_message_id,
      id: id,
      image_display_height: image_display_height,
      image_display_width: image_display_width,
      media_key: media_key,
      media_url: media_url,
      name: name,
      recipient_user_id: recipient_user_id,
      updated_at: updated_at,
      account_id: account_id,
    )
  end
end
