## Generated from media_library.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct MediaLibrary
      include ::Protobuf::Message
      
      contract_of "proto2" do
        optional :tweeted, :bool, 1
        optional :duration, :int64, 2
        optional :name, :string, 3
        optional :file_name, :string, 4
        optional :description, :string, 5
        optional :media_url, :string, 6
        optional :poster_media_url, :string, 7
        optional :poster_media_key, :string, 8
        optional :media_key, :string, 9
        optional :created_at, :string, 10
        optional :media_status, :string, 11
        optional :title, :string, 12
        optional :media_type, :string, 13
        optional :aspect_ratio, :string, 14
        optional :updated_at, :string, 15
        optional :deleted, :bool, 16
        optional :account_id, :string, 17
      end
    end
    
    struct MediaLibraryArray
      include ::Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, MediaLibrary, 1
      end
    end
    end
  end
