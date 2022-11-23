## Generated from cards.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct Cards
      include ::Protobuf::Message
      
      contract_of "proto2" do
        optional :name, :string, 1
        optional :card_type, :string, 2
        optional :created_at, :string, 3
        optional :card_uri, :string, 4
        optional :id, :string, 5
        optional :updated_at, :string, 6
        optional :deleted, :bool, 7
        optional :account_id, :string, 8
        repeated :titles, :string, 9
        repeated :media_urls, :string, 10
        repeated :dest_urls, :string, 11
        optional :button_label, :string, 12
        optional :button_app_country, :string, 13
        optional :button_app_ios_id, :string, 14
        optional :button_app_ios_link, :string, 15
        optional :button_app_google_id, :string, 16
        optional :button_app_google_link, :string, 17
      end
    end
    
    struct CardsArray
      include ::Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, Cards, 1
      end
    end
    end
  end
