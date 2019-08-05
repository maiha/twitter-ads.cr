## Generated from proto/line_item.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct LineItem
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :name, :string, 2
        optional :bid_type, :string, 3
        optional :product_type, :string, 4
        optional :advertiser_user_id, :int64, 5
        optional :campaign_id, :string, 6
        optional :advertiser_domain, :string, 7
        optional :automatically_select_bid, :bool, 8
        optional :bid_amount_local_micro, :int64, 9
        optional :bid_unit, :string, 10
        repeated :categories, :string, 11
        optional :creative_source, :string, 12
        optional :currency, :string, 13
        optional :entity_status, :string, 14
        optional :include_sentiment, :string, 15
        optional :objective, :string, 16
        optional :optimization, :string, 17
        repeated :placements, :string, 18
        optional :primary_web_event_tag, :string, 19
        optional :target_cpa_local_micro, :string, 20
        optional :total_budget_amount_local_micro, :string, 21
        repeated :tracking_tags, :string, 22
        optional :charge_by, :string, 23
        optional :start_time, :string, 24
        optional :end_time, :string, 25
        optional :created_at, :string, 26
        optional :updated_at, :string, 27
        optional :deleted, :bool, 28
        optional :account_id, :string, 29
      end
    end
    
    struct LineItemArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, LineItem, 1
      end
    end
    end
  end
