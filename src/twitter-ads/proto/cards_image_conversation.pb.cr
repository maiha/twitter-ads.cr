## Generated from cards_image_conversation.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct CardsImageConversation
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :card_type, :string, 2
        optional :card_uri, :string, 3
        optional :name, :string, 4
        optional :title, :string, 5
        optional :first_cta, :string, 6
        optional :first_cta_tweet, :string, 7
        optional :image, :string, 8
        optional :image_display_width, :string, 9
        optional :image_display_height, :string, 10
        optional :thank_you_text, :string, 11
        optional :created_at, :string, 12
        optional :updated_at, :string, 13
        optional :deleted, :bool, 14
        optional :account_id, :string, 15
      end
    end
    
    struct CardsImageConversationArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, CardsImageConversation, 1
      end
    end
    end
  end
