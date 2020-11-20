## Generated from cards_poll.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct CardsPoll
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :card_type, :string, 1
        optional :card_uri, :string, 2
        optional :content_duration_seconds, :string, 3
        optional :created_at, :string, 4
        optional :deleted, :bool, 5
        optional :duration_in_minutes, :string, 6
        optional :end_time, :string, 7
        optional :first_choice, :string, 8
        optional :fourth_choice, :string, 9
        optional :id, :string, 10
        optional :image_display_height, :string, 11
        optional :image_display_width, :string, 12
        optional :media_key, :string, 13
        optional :media_url, :string, 14
        optional :name, :string, 15
        optional :poster_media_url, :string, 16
        optional :second_choice, :string, 17
        optional :start_time, :string, 18
        optional :third_choice, :string, 19
        optional :updated_at, :string, 20
        optional :video_height, :string, 21
        optional :video_hls_url, :string, 22
        optional :video_poster_height, :string, 23
        optional :video_poster_width, :string, 24
        optional :video_width, :string, 25
        optional :account_id, :string, 26
      end
    end
    
    struct CardsPollArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, CardsPoll, 1
      end
    end
    end
  end
