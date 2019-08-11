## Generated from cards_video_direct_message.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct CardsVideoDirectMessage
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :card_type, :string, 2
        optional :card_uri, :string, 3
        optional :name, :string, 4
        optional :recipient_user_id, :string, 5
        optional :first_cta, :string, 6
        optional :first_cta_welcome_message_id, :string, 7
        optional :video_url, :string, 8
        optional :video_owner_id, :string, 9
        optional :video_content_id, :string, 10
        optional :video_hls_url, :string, 11
        optional :video_poster_url, :string, 12
        optional :created_at, :string, 13
        optional :updated_at, :string, 14
        optional :deleted, :bool, 15
        optional :account_id, :string, 16
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
