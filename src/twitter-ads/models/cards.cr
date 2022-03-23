class TwitterAds::Cards
  var account_id : String
  var media_urls : Array(String) = Array(String).new

  JSON.mapping({
    name:       String?       , # "deep link"
    card_type:  String?       , # "IMAGE_CAROUSEL_APP"
    created_at: String?       , # "2020-10-28T20:47:52Z"
    card_uri:   String?       , # "card://1321554298900107264"
    id:         String        , # "1321554298900107264"
    updated_at: String?       , # "2020-10-28T20:47:52Z"
    deleted:    Bool?         , # false
    account_id: String?       , # "18ce544yq30"
  })

  def to_pb
    TwitterAds::Proto::Cards.new(
      name: name,
      card_type: card_type,
      created_at: created_at,
      card_uri: card_uri,
      id: id,
      updated_at: updated_at,
      deleted: deleted,
      media_urls: media_urls,

      account_id: account_id,
    )
  end
end
