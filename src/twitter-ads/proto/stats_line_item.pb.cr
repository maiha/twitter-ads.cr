## Generated from stats_line_item.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct StatsLineItem
      include ::Protobuf::Message
      
      contract_of "proto2" do
        required :date, :string, 1
        required :account_id, :string, 2
        required :campaign_id, :string, 3
        required :placement, :string, 4
        optional :engagement, :int64, 5
        optional :impression, :int64, 6
        optional :retweet, :int64, 7
        optional :replie, :int64, 8
        optional :like, :int64, 9
        optional :follow, :int64, 10
        optional :card_engagement, :int64, 11
        optional :click, :int64, 12
        optional :app_click, :int64, 13
        optional :url_click, :int64, 14
        optional :qualified_impression, :int64, 15
        optional :billed_engagement, :int64, 16
        optional :billed_charge_local_micro, :int64, 17
        optional :video_total_view, :int64, 18
        optional :video_views_25, :int64, 19
        optional :video_views_50, :int64, 20
        optional :video_views_75, :int64, 21
        optional :video_views_100, :int64, 22
        optional :video_cta_click, :int64, 23
        optional :video_content_start, :int64, 24
        optional :video_mrc_view, :int64, 25
        optional :video_3s100pct_view, :int64, 26
        optional :media_view, :int64, 27
        optional :media_engagement, :int64, 28
      end
    end
    
    struct StatsLineItemArray
      include ::Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, StatsLineItem, 1
      end
    end
    end
  end
