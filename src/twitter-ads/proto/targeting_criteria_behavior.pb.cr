## Generated from targeting_criteria_behavior.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct TargetingCriteriaBehavior
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :name, :string, 2
        repeated :targetable_types, :string, 3
        optional :country_code, :string, 4
        optional :partner_source, :string, 5
        optional :behavior_taxonomy_id, :string, 6
        optional :audience_size, :int64, 7
      end
    end
    
    struct TargetingCriteriaBehaviorArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, TargetingCriteriaBehavior, 1
      end
    end
    end
  end
