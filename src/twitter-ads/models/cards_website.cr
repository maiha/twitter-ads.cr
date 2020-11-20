class TwitterAds::CardsWebsite
  var account_id : String

  JSON.mapping({
    card_type:             String? , # "WEBSITE"
    card_uri:              String? , # "card://957044309437526017"
    created_at:            String? , # "2018-01-27T00:15:19Z"
    deleted:               Bool?   , # false
    id:                    String  , # "59wh0"
    image_display_height:  String? , # "418"
    image_display_width:   String? , # "800"
    media_key:             String? , # "3_955505955445268480"
    media_url:             String? , # "https://pbs.twimg.com/media/DUKjmp8V4AAhrrB.jpg"
    name:                  String? , # "website card"
    updated_at:            String? , # "2018-01-27T00:15:19Z"
    website_amp_url:       String? , # "https://..."
    website_cdn_amp_url:   String? , # "https://..."
    website_dest_url:      String? , # "https://developer.twitter.com"
    website_display_url:   String? , # "developer.twitter.com"
    website_shortened_url: String? , # "https://t.co/zadeUSVD18"
    website_title:         String? , # "Twitter Developers"
    website_url:           String? , # "https://developer.twitter.com"
  })

  def to_pb
    TwitterAds::Proto::CardsWebsite.new(
      card_type: card_type,
      card_uri: card_uri,
      created_at: created_at,
      deleted: deleted,
      id: id,
      image_display_height: image_display_height,
      image_display_width: image_display_width,
      media_key: media_key,
      media_url: media_url,
      name: name,
      updated_at: updated_at,
      website_amp_url: website_amp_url,
      website_cdn_amp_url: website_cdn_amp_url,
      website_dest_url: website_dest_url,
      website_display_url: website_display_url,
      website_shortened_url: website_shortened_url,
      website_title: website_title,
      website_url: website_url,
      account_id: account_id,
    )
  end
end
