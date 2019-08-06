## Generated from targeting_criteria_locations.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct TargetingCriteriaLocation
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :name, :string, 1
        optional :country_code, :string, 2
        optional :location_type, :string, 3
        optional :targeting_type, :string, 4
        optional :targeting_value, :string, 5
      end
    end
    
    struct TargetingCriteriaLocationArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, TargetingCriteriaLocation, 1
      end
    end
    end
  end
