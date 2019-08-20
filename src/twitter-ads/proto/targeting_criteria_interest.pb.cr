## Generated from targeting_criteria_interest.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct TargetingCriteriaInterest
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :name, :string, 1
        optional :targeting_type, :string, 2
        optional :targeting_value, :string, 3
      end
    end
    
    struct TargetingCriteriaInterestArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, TargetingCriteriaInterest, 1
      end
    end
    end
  end
