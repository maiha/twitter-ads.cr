## Generated from stats_account_request.proto
require "protobuf"

require "./stats_account_params.pb.cr"

module TwitterAds
  module Proto
    
    struct StatsAccountRequest
      include ::Protobuf::Message
      
      contract_of "proto2" do
        required :params, StatsAccountParams, 1
      end
    end
    
    struct StatsAccountRequestArray
      include ::Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, StatsAccountRequest, 1
      end
    end
    end
  end
