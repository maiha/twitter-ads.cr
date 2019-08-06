## Generated from proto/reach_estimate.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct ReachEstimate
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :impressions, :string, 1
        optional :count, :string, 2
        optional :infinite_bid_count, :string, 3
        optional :engagements, :string, 4
        optional :estimated_daily_spend_local_micro, :string, 5
        optional :account_id, :string, 6
      end
    end
    
    struct ReachEstimateArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ReachEstimate, 1
      end
    end
    end
  end
