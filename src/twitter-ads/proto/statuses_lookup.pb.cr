## Generated from statuses_lookup.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct StatusesLookup
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :created_at, :string, 1
        optional :id, :int64, 2
        optional :id_str, :string, 3
        optional :text, :string, 4
        optional :truncated, :bool, 5
        optional :source, :string, 6
        optional :in_reply_to_status_id, :string, 7
        optional :in_reply_to_status_id_str, :string, 8
        optional :in_reply_to_user_id, :string, 9
        optional :in_reply_to_user_id_str, :string, 10
        optional :in_reply_to_screen_name, :string, 11
        optional :geo, :string, 12
        optional :coordinates, :string, 13
        optional :place, :string, 14
        optional :contributors, :string, 15
        optional :is_quote_status, :bool, 16
        optional :retweet_count, :int64, 17
        optional :favorite_count, :int64, 18
        optional :favorited, :bool, 19
        optional :retweeted, :bool, 20
        optional :lang, :string, 21
      end
    end
    
    struct StatusesLookupArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, StatusesLookup, 1
      end
    end
    end
  end
