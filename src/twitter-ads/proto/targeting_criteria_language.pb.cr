## Generated from targeting_criteria_language.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct TargetingCriteriaLanguage
      include ::Protobuf::Message
      
      contract_of "proto2" do
        optional :name, :string, 1
        optional :targeting_type, :string, 2
        optional :targeting_value, :string, 3
      end
    end
    
    struct TargetingCriteriaLanguageArray
      include ::Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, TargetingCriteriaLanguage, 1
      end
    end
    end
  end
