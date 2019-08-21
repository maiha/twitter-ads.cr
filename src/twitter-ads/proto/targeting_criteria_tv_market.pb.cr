## Generated from targeting_criteria_tv_market.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct TargetingCriteriaTvMarket
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :name, :string, 2
        optional :country_code, :string, 3
        optional :locale, :string, 4
      end
    end
    
    struct TargetingCriteriaTvMarketArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, TargetingCriteriaTvMarket, 1
      end
    end
    end
  end
