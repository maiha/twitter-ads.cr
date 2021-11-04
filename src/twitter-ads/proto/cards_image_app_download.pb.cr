## Generated from cards_image_app_download.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct CardsImageAppDownload
      include ::Protobuf::Message
      
      contract_of "proto2" do
        optional :app_cta, :string, 1
        optional :card_type, :string, 2
        optional :card_uri, :string, 3
        optional :country_code, :string, 4
        optional :created_at, :string, 5
        optional :deleted, :bool, 6
        optional :googleplay_app_id, :string, 7
        optional :googleplay_deep_link, :string, 8
        optional :id, :string, 9
        optional :image_display_height, :string, 10
        optional :image_display_width, :string, 11
        optional :ipad_app_id, :string, 12
        optional :ipad_deep_link, :string, 13
        optional :iphone_app_id, :string, 14
        optional :iphone_deep_link, :string, 15
        optional :media_key, :string, 16
        optional :media_url, :string, 17
        optional :name, :string, 18
        optional :updated_at, :string, 19
        optional :account_id, :string, 20
      end
    end
    
    struct CardsImageAppDownloadArray
      include ::Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, CardsImageAppDownload, 1
      end
    end
    end
  end
