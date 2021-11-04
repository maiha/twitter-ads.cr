## Generated from cards_video_app_download.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct CardsVideoAppDownload
      include ::Protobuf::Message
      
      contract_of "proto2" do
        optional :card_uri, :string, 1
        optional :card_type, :string, 2
        optional :created_at, :string, 3
        optional :deleted, :bool, 4
        optional :id, :string, 5
        optional :updated_at, :string, 6
        optional :video_owner_id, :string, 7
        optional :poster_media_url, :string, 8
        optional :media_url, :string, 9
        optional :country_code, :string, 10
        optional :app_cta, :string, 11
        optional :ipad_app_id, :string, 12
        optional :ipad_deep_link, :string, 13
        optional :iphone_app_id, :string, 14
        optional :iphone_deep_link, :string, 15
        optional :googleplay_app_id, :string, 16
        optional :googleplay_deep_link, :string, 17
        optional :name, :string, 18
        optional :media_key, :string, 19
        optional :account_id, :string, 20
      end
    end
    
    struct CardsVideoAppDownloadArray
      include ::Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, CardsVideoAppDownload, 1
      end
    end
    end
  end
