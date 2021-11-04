## Generated from targeting_criteria.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct TargetingCriteria
      include ::Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :name, :string, 2
        optional :line_item_id, :string, 3
        optional :operator_type, :string, 4
        optional :tailored_audience_type, :string, 5
        optional :tailored_audience_expansion, :bool, 6
        optional :targeting_value, :string, 7
        optional :targeting_type, :string, 8
        optional :created_at, :string, 9
        optional :updated_at, :string, 10
        optional :deleted, :bool, 11
        optional :account_id, :string, 12
      end
    end
    
    struct TargetingCriteriaArray
      include ::Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, TargetingCriteria, 1
      end
    end
    end
  end
