## Generated from line_item.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct LineItem
      include ::Protobuf::Message
      
      contract_of "proto2" do
        optional :bid_strategy, :string, 1
        optional :advertiser_user_id, :string, 2
        optional :name, :string, 3
        repeated :placements, :string, 4
        optional :start_time, :string, 5
        optional :bid_amount_local_micro, :int64, 6
        optional :advertiser_domain, :string, 7
        optional :target_cpa_local_micro, :string, 8
        optional :primary_web_event_tag, :string, 9
        optional :pay_by, :string, 10
        optional :product_type, :string, 11
        optional :end_time, :string, 12
        optional :duration_in_days, :int64, 13
        optional :total_budget_amount_local_micro, :int64, 14
        optional :objective, :string, 15
        optional :id, :string, 16
        optional :entity_status, :string, 17
        optional :goal, :string, 18
        optional :frequency_cap, :int64, 19
        repeated :categories, :string, 20
        optional :currency, :string, 21
        optional :created_at, :string, 22
        optional :updated_at, :string, 23
        optional :campaign_id, :string, 24
        optional :creative_source, :string, 25
        optional :deleted, :bool, 26
        optional :account_id, :string, 27
      end
    end
    
    struct LineItemArray
      include ::Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, LineItem, 1
      end
    end
    end
  end
