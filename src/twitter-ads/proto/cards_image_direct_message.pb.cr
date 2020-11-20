## Generated from cards_image_direct_message.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct CardsImageDirectMessage
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :card_type, :string, 1
        optional :card_uri, :string, 2
        optional :created_at, :string, 3
        optional :deleted, :bool, 4
        optional :first_cta, :string, 5
        optional :first_cta_welcome_message_id, :string, 6
        optional :id, :string, 7
        optional :image_display_height, :string, 8
        optional :image_display_width, :string, 9
        optional :media_key, :string, 10
        optional :media_url, :string, 11
        optional :name, :string, 12
        optional :recipient_user_id, :string, 13
        optional :updated_at, :string, 14
        optional :account_id, :string, 15
      end
    end
    
    struct CardsImageDirectMessageArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, CardsImageDirectMessage, 1
      end
    end
    end
  end
