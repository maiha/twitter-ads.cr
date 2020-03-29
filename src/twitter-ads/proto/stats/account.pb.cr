## Generated from stats/account.proto
require "protobuf"

module TwitterAds
  module Proto
    module Stats
      
      struct Account
        include Protobuf::Message
        
        contract_of "proto2" do
          required :date, :string, 1
          required :account_id, :string, 2
          required :entity, :string, 3
          repeated :entity_ids, :string, 4
          required :start_time, :string, 5
          required :end_time, :string, 6
          repeated :metric_groups, :string, 7
          required :granularity, :string, 8
          required :placement, :string, 9
          optional :segmentation_type, :string, 10
          optional :country, :string, 11
          optional :platform, :string, 12
          optional :engagement, :int64, 13
          optional :impression, :int64, 14
          optional :retweet, :int64, 15
          optional :replie, :int64, 16
          optional :like, :int64, 17
          optional :follow, :int64, 18
          optional :card_engagement, :int64, 19
          optional :click, :int64, 20
          optional :app_click, :int64, 21
          optional :url_click, :int64, 22
          optional :qualified_impression, :int64, 23
          optional :billed_engagement, :int64, 24
          optional :billed_charge_local_micro, :int64, 25
          optional :video_total_view, :int64, 26
          optional :video_views_25, :int64, 27
          optional :video_views_50, :int64, 28
          optional :video_views_75, :int64, 29
          optional :video_views_100, :int64, 30
          optional :video_cta_click, :int64, 31
          optional :video_content_start, :int64, 32
          optional :video_mrc_view, :int64, 33
          optional :video_3s100pct_view, :int64, 34
          optional :media_view, :int64, 35
          optional :media_engagement, :int64, 36
        end
      end
      
      struct AccountArray
        include Protobuf::Message
        
        contract_of "proto2" do
          repeated :array, Account, 1
        end
      end
      end
    end
  end
