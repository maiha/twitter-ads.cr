## Generated from media_library.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct MediaLibrary
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :media_id, :string, 1
        optional :media_type, :string, 2
        optional :media_status, :string, 3
        optional :media_category, :string, 4
        optional :media_key, :string, 5
        optional :name, :string, 6
        optional :file_name, :string, 7
        optional :media_url, :string, 8
        optional :tweeted, :bool, 9
        optional :created_at, :string, 10
        optional :updated_at, :string, 11
        optional :deleted, :bool, 12
        optional :account_id, :string, 13
      end
    end
    
    struct MediaLibraryArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, MediaLibrary, 1
      end
    end
    end
  end
