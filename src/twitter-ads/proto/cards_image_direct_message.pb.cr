## Generated from cards_image_direct_message.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct CardsImageDirectMessage
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :card_type, :string, 2
        optional :card_uri, :string, 3
        optional :name, :string, 4
        optional :first_cta, :string, 5
        optional :first_cta_welcome_message_id, :string, 6
        optional :image, :string, 7
        optional :image_display_width, :string, 8
        optional :image_display_height, :string, 9
        optional :recipient_user_id, :string, 10
        optional :created_at, :string, 11
        optional :updated_at, :string, 12
        optional :deleted, :bool, 13
        optional :account_id, :string, 14
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
