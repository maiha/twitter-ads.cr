## Generated from proto/media_creative.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct MediaCreative
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :line_item_id, :string, 2
        optional :account_media_id, :string, 3
        optional :approval_status, :string, 4
        optional :serving_status, :string, 5
        optional :landing_url, :string, 6
        optional :created_at, :string, 7
        optional :updated_at, :string, 8
        optional :deleted, :bool, 9
        optional :account_id, :string, 10
      end
    end
    
    struct MediaCreativeArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, MediaCreative, 1
      end
    end
    end
  end
