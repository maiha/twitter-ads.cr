## Generated from targeting_criteria_platform.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct TargetingCriteriaPlatform
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :name, :string, 1
        optional :targeting_type, :string, 2
        optional :targeting_value, :string, 3
        optional :lang, :string, 4
      end
    end
    
    struct TargetingCriteriaPlatformArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, TargetingCriteriaPlatform, 1
      end
    end
    end
  end
