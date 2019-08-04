## Generated from proto/campaign.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct Campaign
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :name, :string, 2
        optional :start_time, :string, 3
        optional :end_time, :string, 4
        optional :duration_in_days, :int64, 5
        optional :standard_delivery, :bool, 6
        optional :servable, :bool, 7
        optional :funding_instrument_id, :string, 8
        optional :daily_budget_amount_local_micro, :int64, 9
        optional :total_budget_amount_local_micro, :int64, 10
        repeated :reasons_not_servable, :string, 11
        optional :frequency_cap, :int64, 12
        optional :currency, :string, 13
        optional :created_at, :string, 14
        optional :updated_at, :string, 15
        optional :entity_status, :string, 16
        optional :deleted, :bool, 17
      end
    end
    
    struct CampaignArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, Campaign, 1
      end
    end
    end
  end
