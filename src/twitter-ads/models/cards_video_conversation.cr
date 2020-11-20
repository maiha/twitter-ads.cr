class TwitterAds::CardsVideoConversation
  var account_id : String

  JSON.mapping({
    card_type:                  String? , # "VIDEO_CONVERSATION"
    card_uri:                   String? , # "card://923498485702009837"
    cover_image_display_height: String? , # "9"
    cover_image_display_width:  String? , # "16"
    cover_image_url:            String? , # "https://pbs.twimg.com/..."
    cover_video_content_id:     String? , # "13_123456"
    cover_video_height:         String? , # "9"
    cover_video_hls_url:        String? , # "https://..."
    cover_video_poster_url:     String? , # "https://..."
    cover_video_url:            String? , # "https://..."
    cover_video_width:          String? , # "16"
    created_at:                 String? , # "2018-01-27T04:58:42Z"
    deleted:                    Bool?   , # false
    first_cta:                  String? , # "#moon"
    first_cta_tweet:            String? , # "stars"
    fourth_cta:                 String? , # "#4th"
    fourth_cta_tweet:           String? , # "4th text"
    id:                         String  , # "59woh"
    media_key:                  String? , # "3_957113581522141184"
    media_url:                  String? , # "https://pbs.twimg.com/media/DUhZuzxUQAAWZqr.jpg"
    name:                       String? , # "image conversation card"
    poster_media_url:           String? , # "https://..."
    second_cta:                 String? , # "#2nd"
    second_cta_tweet:           String? , # "2nd text"
    thank_you_dest_url:         String? , # "https://..."
    thank_you_display_url:      String? , # "https://..."
    thank_you_shortened_url:    String? , # "https://..."
    thank_you_text:             String? , # "thanks"
    thank_you_url:              String? , # ""
    third_cta:                  String? , # "#3rd"
    third_cta_tweet:            String? , # "3rd text"
    title:                      String? , # "Full moon"
    updated_at:                 String? , # "2018-01-27T04:58:42Z"
    video_height:               String? , # "9"
    video_owner_id:             String? , # "123456"
    video_width:                String? , # "16"
  })

  def to_pb
    TwitterAds::Proto::CardsVideoConversation.new(
      card_type: card_type,
      card_uri: card_uri,
      cover_image_display_height: cover_image_display_height,
      cover_image_display_width: cover_image_display_width,
      cover_image_url: cover_image_url,
      cover_video_content_id: cover_video_content_id,
      cover_video_height: cover_video_height,
      cover_video_hls_url: cover_video_hls_url,
      cover_video_poster_url: cover_video_poster_url,
      cover_video_url: cover_video_url,
      cover_video_width: cover_video_width,
      created_at: created_at,
      deleted: deleted,
      first_cta: first_cta,
      first_cta_tweet: first_cta_tweet,
      fourth_cta: fourth_cta,
      fourth_cta_tweet: fourth_cta_tweet,
      id: id,
      media_key: media_key,
      media_url: media_url,
      name: name,
      poster_media_url: poster_media_url,
      second_cta: second_cta,
      second_cta_tweet: second_cta_tweet,
      thank_you_dest_url: thank_you_dest_url,
      thank_you_display_url: thank_you_display_url,
      thank_you_shortened_url: thank_you_shortened_url,
      thank_you_text: thank_you_text,
      thank_you_url: thank_you_url,
      third_cta: third_cta,
      third_cta_tweet: third_cta_tweet,
      title: title,
      updated_at: updated_at,
      video_height: video_height,
      video_owner_id: video_owner_id,
      video_width: video_width,
      account_id: account_id,
    )
  end
end
