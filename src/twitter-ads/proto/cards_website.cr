class TwitterAds::CardsWebsite
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
