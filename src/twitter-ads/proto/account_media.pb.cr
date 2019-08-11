## Generated from account_media.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct AccountMedia
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :creative_type, :string, 2
        optional :video_id, :string, 3
        optional :media_url, :string, 4
        optional :created_at, :string, 5
        optional :updated_at, :string, 6
        optional :deleted, :bool, 7
        optional :account_id, :string, 8
      end
    end
    
    struct AccountMediaArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AccountMedia, 1
      end
    end
    end
  end
