class TwitterAds::CardsVideoConversation
  var account_id : String

  JSON.mapping({
    id:               String  , # "5a86h"
    card_type:        String? , # "VIDEO_CONVERSATION"
    card_uri:         String? , # "card://958397665015775232"
    name:             String? , # "video conversation card"
    title:            String? , # "Developers"
    first_cta:        String? , # "#APIs"
    first_cta_tweet:  String? , # "Ads API"
    video_url:        String? , # "https://video.twimg.com/amplify_video/vmap/958388276489895936.vmap"
    video_content_id: String? , # "958388276489895936"
    video_owner_id:   String? , # "756201191646691328"
    video_width:      String? , # "16"
    video_height:     String? , # "9"
    video_hls_url:    String? , # "https://video.twimg.com/amplify_video/958388276489895936/pl/q-gHLuId_71EFVdk.m3u8"
    video_poster_url: String? , # "https://pbs.twimg.com/amplify_video_thumb/958388276489895936/img/W-OL5rZ_MZ19A7Pa.jpg"
    thank_you_text:   String? , # "Build it"
    created_at:       String? , # "2018-01-30T17:53:04Z"
    updated_at:       String? , # "2018-01-30T17:53:04Z"
    deleted:          Bool?   , # false
  })

  def to_pb
    TwitterAds::Proto::CardsVideoConversation.new(
      id: id,
      card_type: card_type,
      card_uri: card_uri,
      name: name,
      title: title,
      first_cta: first_cta,
      first_cta_tweet: first_cta_tweet,
      video_url: video_url,
      video_content_id: video_content_id,
      video_owner_id: video_owner_id,
      video_width: video_width,
      video_height: video_height,
      video_hls_url: video_hls_url,
      video_poster_url: video_poster_url,
      thank_you_text: thank_you_text,
      created_at: created_at,
      updated_at: updated_at,
      deleted: deleted,

      account_id: account_id,
    )
  end
end
