## Generated from stats_account_id_data.proto
require "protobuf"

require "./stats_account_metrics.pb.cr"

module TwitterAds
  module Proto
    
    struct StatsAccountIdData
      include Protobuf::Message
      
      contract_of "proto2" do
        required :id, :string, 1
        repeated :metrics, StatsAccountMetrics, 2
      end
    end
    
    struct StatsAccountIdDataArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, StatsAccountIdData, 1
      end
    end
    end
  end
