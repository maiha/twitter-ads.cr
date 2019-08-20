## Generated from targeting_criteria_device.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct TargetingCriteriaDevice
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :name, :string, 1
        optional :manufacturer, :string, 2
        optional :platform, :string, 3
        optional :targeting_value, :string, 4
        optional :targeting_type, :string, 5
      end
    end
    
    struct TargetingCriteriaDeviceArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, TargetingCriteriaDevice, 1
      end
    end
    end
  end
