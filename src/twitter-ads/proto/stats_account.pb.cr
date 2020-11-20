## Generated from stats_account.proto
require "protobuf"

require "./stats_account_id_data.pb.cr"
require "./stats_account_request.pb.cr"

module TwitterAds
  module Proto
    
    struct StatsAccount
      include Protobuf::Message
      
      contract_of "proto2" do
        required :account_id, :string, 1
        required :data_type, :string, 2
        required :time_series_length, :int64, 3
        repeated :data, StatsAccountIdData, 4
        required :request, StatsAccountRequest, 5
      end
    end
    
    struct StatsAccountArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, StatsAccount, 1
      end
    end
    end
  end
