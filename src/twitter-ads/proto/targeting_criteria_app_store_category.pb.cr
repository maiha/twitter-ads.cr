## Generated from targeting_criteria_app_store_category.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct TargetingCriteriaAppStoreCategory
      include ::Protobuf::Message
      
      contract_of "proto2" do
        optional :name, :string, 1
        optional :targeting_type, :string, 2
        optional :targeting_value, :string, 3
        optional :os_type, :string, 4
      end
    end
    
    struct TargetingCriteriaAppStoreCategoryArray
      include ::Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, TargetingCriteriaAppStoreCategory, 1
      end
    end
    end
  end
