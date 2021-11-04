## Generated from stats_account_params.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct StatsAccountParams
      include ::Protobuf::Message
      
      contract_of "proto2" do
        required :entity, :string, 1
        repeated :entity_ids, :string, 2
        required :start_time, :string, 3
        required :end_time, :string, 4
        repeated :metric_groups, :string, 5
        required :granularity, :string, 6
        required :placement, :string, 7
        optional :segmentation_type, :string, 8
        optional :country, :string, 9
        optional :platform, :string, 10
      end
    end
    
    struct StatsAccountParamsArray
      include ::Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, StatsAccountParams, 1
      end
    end
    end
  end
