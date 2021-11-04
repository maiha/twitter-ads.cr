## Generated from tracking_tag.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct TrackingTag
      include ::Protobuf::Message
      
      contract_of "proto2" do
        optional :tracking_partner, :string, 1
        optional :tracking_tag, :string, 2
      end
    end
    
    struct TrackingTagArray
      include ::Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, TrackingTag, 1
      end
    end
    end
  end
