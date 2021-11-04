## Generated from targeting_criteria_event.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct TargetingCriteriaEvent
      include ::Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :name, :string, 2
        optional :is_global, :bool, 3
        optional :country_code, :string, 4
        optional :event_type, :string, 5
        optional :start_time, :string, 6
        optional :end_time, :string, 7
      end
    end
    
    struct TargetingCriteriaEventArray
      include ::Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, TargetingCriteriaEvent, 1
      end
    end
    end
  end
