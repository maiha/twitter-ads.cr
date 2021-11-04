## Generated from targeting_criteria_tv_market.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct TargetingCriteriaTvMarket
      include ::Protobuf::Message
      
      contract_of "proto2" do
        optional :name, :string, 1
        optional :country_code, :string, 2
        optional :locale, :string, 3
      end
    end
    
    struct TargetingCriteriaTvMarketArray
      include ::Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, TargetingCriteriaTvMarket, 1
      end
    end
    end
  end
