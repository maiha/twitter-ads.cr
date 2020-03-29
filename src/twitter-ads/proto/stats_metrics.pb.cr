## Generated from stats_metrics.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct StatsMetrics
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :engagements, :int64, 1
        repeated :impressions, :int64, 2
        repeated :retweets, :int64, 3
        repeated :replies, :int64, 4
        repeated :likes, :int64, 5
        repeated :follows, :int64, 6
        repeated :card_engagements, :int64, 7
        repeated :clicks, :int64, 8
        repeated :app_clicks, :int64, 9
        repeated :url_clicks, :int64, 10
        repeated :qualified_impressions, :int64, 11
        repeated :billed_engagements, :int64, 12
        repeated :billed_charge_local_micro, :int64, 13
        repeated :video_total_views, :int64, 14
        repeated :video_views_25, :int64, 15
        repeated :video_views_50, :int64, 16
        repeated :video_views_75, :int64, 17
        repeated :video_views_100, :int64, 18
        repeated :video_cta_clicks, :int64, 19
        repeated :video_content_starts, :int64, 20
        repeated :video_mrc_views, :int64, 21
        repeated :video_3s100pct_views, :int64, 22
        repeated :media_views, :int64, 23
        repeated :media_engagements, :int64, 24
      end
    end
    
    struct StatsMetricsArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, StatsMetrics, 1
      end
    end
    end
  end
