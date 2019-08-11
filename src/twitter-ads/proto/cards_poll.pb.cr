## Generated from cards_poll.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct CardsPoll
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :card_type, :string, 2
        optional :card_uri, :string, 3
        optional :name, :string, 4
        optional :first_choice, :string, 5
        optional :second_choice, :string, 6
        optional :content_duration_seconds, :string, 7
        optional :duration_in_minutes, :string, 8
        optional :video_width, :string, 9
        optional :video_height, :string, 10
        optional :video_url, :string, 11
        optional :video_hls_url, :string, 12
        optional :video_poster_width, :string, 13
        optional :video_poster_height, :string, 14
        optional :video_poster_url, :string, 15
        optional :start_time, :string, 16
        optional :end_time, :string, 17
        optional :created_at, :string, 18
        optional :updated_at, :string, 19
        optional :deleted, :bool, 20
        optional :account_id, :string, 21
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
