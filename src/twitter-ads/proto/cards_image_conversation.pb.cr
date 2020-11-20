## Generated from cards_image_conversation.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct CardsImageConversation
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :card_type, :string, 1
        optional :card_uri, :string, 2
        optional :cover_image_url, :string, 3
        optional :cover_image_display_height, :string, 4
        optional :cover_image_display_width, :string, 5
        optional :created_at, :string, 6
        optional :deleted, :bool, 7
        optional :id, :string, 8
        optional :image_display_height, :string, 9
        optional :image_display_width, :string, 10
        optional :media_url, :string, 11
        optional :updated_at, :string, 12
        optional :media_key, :string, 13
        optional :name, :string, 14
        optional :first_cta, :string, 15
        optional :first_cta_tweet, :string, 16
        optional :second_cta, :string, 17
        optional :second_cta_tweet, :string, 18
        optional :third_cta, :string, 19
        optional :third_cta_tweet, :string, 20
        optional :fourth_cta, :string, 21
        optional :fourth_cta_tweet, :string, 22
        optional :thank_you_dest_url, :string, 23
        optional :thank_you_display_url, :string, 24
        optional :thank_you_shortened_url, :string, 25
        optional :thank_you_text, :string, 26
        optional :thank_you_url, :string, 27
        optional :title, :string, 28
        optional :account_id, :string, 29
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
