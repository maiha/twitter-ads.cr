class TwitterAds::CardsImageDirectMessage
  var account_id : String

  JSON.mapping({
    id:                           String  , # "59wpi"
    card_type:                    String? , # "IMAGE_DIRECT_MESSAGE"
    card_uri:                     String? , # "card://957127157993500678"
    name:                         String? , # "space card"
    first_cta:                    String? , # "DM me"
    first_cta_welcome_message_id: String? , # "865707372148174852"
    image:                        String? , # "https://pbs.twimg.com/media/DUfy_2JU8AAMAOk.jpg"
    image_display_width:          String? , # "800"
    image_display_height:         String? , # "418"
    recipient_user_id:            String? , # "756201191646691328"
    created_at:                   String? , # "2018-01-27T05:44:31Z"
    updated_at:                   String? , # "2018-01-30T01:33:49Z"
    deleted:                      Bool?   , # false
  })

  def to_pb
    TwitterAds::Proto::CardsImageDirectMessage.new(
      id: id,
      card_type: card_type,
      card_uri: card_uri,
      name: name,
      first_cta: first_cta,
      first_cta_welcome_message_id: first_cta_welcome_message_id,
      image: image,
      image_display_width: image_display_width,
      image_display_height: image_display_height,
      recipient_user_id: recipient_user_id,
      created_at: created_at,
      updated_at: updated_at,
      deleted: deleted,

      account_id: account_id,
    )
  end
end
