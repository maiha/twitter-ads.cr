## Generated from stats_account_metrics.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct StatsAccountMetrics
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :segment, :string, 1
        repeated :engagements, :int64, 2
        repeated :impressions, :int64, 3
        repeated :retweets, :int64, 4
        repeated :replies, :int64, 5
        repeated :likes, :int64, 6
        repeated :follows, :int64, 7
        repeated :card_engagements, :int64, 8
        repeated :clicks, :int64, 9
        repeated :app_clicks, :int64, 10
        repeated :url_clicks, :int64, 11
        repeated :qualified_impressions, :int64, 12
        repeated :billed_engagements, :int64, 13
        repeated :billed_charge_local_micro, :int64, 14
        repeated :video_total_views, :int64, 15
        repeated :video_views_25, :int64, 16
        repeated :video_views_50, :int64, 17
        repeated :video_views_75, :int64, 18
        repeated :video_views_100, :int64, 19
        repeated :video_cta_clicks, :int64, 20
        repeated :video_content_starts, :int64, 21
        repeated :video_mrc_views, :int64, 22
        repeated :video_3s100pct_views, :int64, 23
        repeated :media_views, :int64, 24
        repeated :media_engagements, :int64, 25
      end
    end
    
    struct StatsAccountMetricsArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, StatsAccountMetrics, 1
      end
    end
    end
  end
