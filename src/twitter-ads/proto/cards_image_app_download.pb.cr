## Generated from cards_image_app_download.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct CardsImageAppDownload
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :card_type, :string, 2
        optional :card_uri, :string, 3
        optional :name, :string, 4
        optional :app_cta, :string, 5
        optional :country_code, :string, 6
        optional :googleplay_app_id, :string, 7
        optional :image_display_width, :string, 8
        optional :image_display_height, :string, 9
        optional :wide_app_image, :string, 10
        optional :created_at, :string, 11
        optional :updated_at, :string, 12
        optional :deleted, :bool, 13
        optional :account_id, :string, 14
      end
    end
    
    struct CardsImageAppDownloadArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, CardsImageAppDownload, 1
      end
    end
    end
  end
