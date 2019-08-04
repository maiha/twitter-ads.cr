class TwitterAds::CardsWebsite
  JSON.mapping({
    id:                    String? , # "59wh0"
    name:                  String? , # "website card"
    card_type:             String? , # "WEBSITE"
    card_uri:              String? , # "card://957044309437526017"
    image:                 String? , # "https://pbs.twimg.com/media/DUKjmp8V4AAhrrB.jpg"
    image_display_width:   String? , # "800"
    image_display_height:  String? , # "418"
    website_dest_url:      String? , # "https://developer.twitter.com"
    website_display_url:   String? , # "developer.twitter.com"
    website_shortened_url: String? , # "https://t.co/zadeUSVD18"
    website_title:         String? , # "Twitter Developers"
    website_url:           String? , # "https://developer.twitter.com"
    created_at:            String? , # "2018-01-27T00:15:19Z"
    updated_at:            String? , # "2018-01-27T00:15:19Z"
    deleted:               Bool?   , # false
  })

  def to_pb
    TwitterAds::Proto::CardsWebsite.new(
      id: id,
      name: name,
      card_type: card_type,
      card_uri: card_uri,
      image: image,
      image_display_width: image_display_width,
      image_display_height: image_display_height,
      website_dest_url: website_dest_url,
      website_display_url: website_display_url,
      website_shortened_url: website_shortened_url,
      website_title: website_title,
      website_url: website_url,
      created_at: created_at,
      updated_at: updated_at,
      deleted: deleted,
    )
  end
end
