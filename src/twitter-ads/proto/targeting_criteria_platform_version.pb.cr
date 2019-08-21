## Generated from targeting_criteria_platform_version.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct TargetingCriteriaPlatformVersion
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :name, :string, 1
        optional :number, :string, 2
        optional :platform, :string, 3
        optional :targeting_type, :string, 4
        optional :targeting_value, :string, 5
      end
    end
    
    struct TargetingCriteriaPlatformVersionArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, TargetingCriteriaPlatformVersion, 1
      end
    end
    end
  end
