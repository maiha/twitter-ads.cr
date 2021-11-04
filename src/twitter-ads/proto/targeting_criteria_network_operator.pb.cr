## Generated from targeting_criteria_network_operator.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct TargetingCriteriaNetworkOperator
      include ::Protobuf::Message
      
      contract_of "proto2" do
        optional :name, :string, 1
        optional :targeting_type, :string, 2
        optional :targeting_value, :string, 3
        optional :country_code, :string, 4
      end
    end
    
    struct TargetingCriteriaNetworkOperatorArray
      include ::Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, TargetingCriteriaNetworkOperator, 1
      end
    end
    end
  end
