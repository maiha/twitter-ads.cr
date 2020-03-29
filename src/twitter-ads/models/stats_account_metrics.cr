class TwitterAds::StatsAccountMetrics
  JSON.mapping({
    segment:                   String?      , # null
    engagements:               Array(Int64)? , # [0,65,8]
    impressions:               Array(Int64)? , # [0,2995,753]
    retweets:                  Array(Int64)? , # [0,3,1]
    replies:                   Array(Int64)? , # [0,3,1]
    likes:                     Array(Int64)? , # [0,3,1]
    follows:                   Array(Int64)? , # [0,3,1]
    card_engagements:          Array(Int64)? , # [0,3,1]
    clicks:                    Array(Int64)? , # [0,3,1]
    app_clicks:                Array(Int64)? , # [0,3,1]
    url_clicks:                Array(Int64)? , # [0,3,1]
    qualified_impressions:     Array(Int64)? , # [0,3,1]
    billed_engagements:        Array(Int64)? , # [0,3,1]
    billed_charge_local_micro: Array(Int64)? , # [0,3,1]
    video_total_views:         Array(Int64)? , # [0,3,1]
    video_views_25:            Array(Int64)? , # [0,3,1]
    video_views_50:            Array(Int64)? , # [0,3,1]
    video_views_75:            Array(Int64)? , # [0,3,1]
    video_views_100:           Array(Int64)? , # [0,3,1]
    video_cta_clicks:          Array(Int64)? , # [0,3,1]
    video_content_starts:      Array(Int64)? , # [0,3,1]
    video_mrc_views:           Array(Int64)? , # [0,1449,351]
    video_3s100pct_views:      Array(Int64)? , # [0,3,1]
    media_views:               Array(Int64)? , # [0,3,1]
    media_engagements:         Array(Int64)? , # [0,3,1]
  })

  def to_pb
    TwitterAds::Proto::StatsAccountMetrics.new(
      segment: segment,
      engagements: engagements,
      impressions: impressions,
      retweets: retweets,
      replies: replies,
      likes: likes,
      follows: follows,
      card_engagements: card_engagements,
      clicks: clicks,
      app_clicks: app_clicks,
      url_clicks: url_clicks,
      qualified_impressions: qualified_impressions,
      billed_engagements: billed_engagements,
      billed_charge_local_micro: billed_charge_local_micro,
      video_total_views: video_total_views,
      video_views_25: video_views_25,
      video_views_50: video_views_50,
      video_views_75: video_views_75,
      video_views_100: video_views_100,
      video_cta_clicks: video_cta_clicks,
      video_content_starts: video_content_starts,
      video_mrc_views: video_mrc_views,
      video_3s100pct_views: video_3s100pct_views,
      media_views: media_views,
      media_engagements: media_engagements,
    )
  end
end
