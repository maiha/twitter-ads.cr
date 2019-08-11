## Generated from scoped_timeline.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct ScopedTimeline
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :int64, 1
        optional :lang, :string, 2
        optional :truncated, :bool, 3
        optional :favorited, :bool, 4
        optional :retweeted, :bool, 5
        optional :favorite_count, :int64, 6
        optional :retweet_count, :int64, 7
        optional :text, :string, 8
        repeated :contributors, :int64, 9
        optional :coordinates, :string, 10
        optional :geo, :string, 11
        optional :place, :string, 12
        optional :source, :string, 13
        optional :in_reply_to_status_id, :int64, 14
        optional :in_reply_to_status_id_str, :string, 15
        optional :in_reply_to_user_id, :int64, 16
        optional :in_reply_to_user_id_str, :string, 17
        optional :in_reply_to_screen_name, :string, 18
        optional :user_id, :int64, 19
        optional :id_str, :string, 20
        optional :created_at, :string, 21
        optional :account_id, :string, 22
      end
    end
    
    struct ScopedTimelineArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ScopedTimeline, 1
      end
    end
    end
  end
