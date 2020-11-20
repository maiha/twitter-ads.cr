## Generated from cards_video_direct_message.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct CardsVideoDirectMessage
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :card_type, :string, 1
        optional :card_uri, :string, 2
        optional :created_at, :string, 3
        optional :deleted, :bool, 4
        optional :first_cta, :string, 5
        optional :first_cta_welcome_message_id, :string, 6
        optional :id, :string, 7
        optional :media_key, :string, 8
        optional :media_url, :string, 9
        optional :name, :string, 10
        optional :poster_media_url, :string, 11
        optional :recipient_user_id, :string, 12
        optional :updated_at, :string, 13
        optional :video_owner_id, :string, 14
        optional :account_id, :string, 15
      end
    end
    
    struct CardsVideoDirectMessageArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, CardsVideoDirectMessage, 1
      end
    end
    end
  end
