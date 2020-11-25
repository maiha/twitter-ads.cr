## Generated from tweet.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct Tweet
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :retweeted, :bool, 1
        optional :source, :string, 2
        optional :favorite_count, :int64, 3
        optional :in_reply_to_status_id_str, :string, 4
        optional :id_str, :string, 5
        optional :in_reply_to_user_id, :int64, 6
        optional :truncated, :bool, 7
        optional :retweet_count, :int64, 8
        optional :scheduled_status, :string, 9
        optional :id, :int64, 10
        optional :in_reply_to_status_id, :int64, 11
        optional :nullcast, :bool, 12
        optional :created_at, :string, 13
        optional :place, :string, 14
        optional :scheduled_at, :string, 15
        optional :tweet_type, :string, 16
        optional :favorited, :bool, 17
        optional :card_uri, :string, 18
        optional :full_text, :string, 19
        optional :lang, :string, 20
        optional :in_reply_to_screen_name, :string, 21
        optional :in_reply_to_user_id_str, :string, 22
        optional :tweet_id, :string, 23
        optional :user_id, :int64, 25
        optional :account_id, :string, 26
        optional :user_name, :string, 27
        optional :user_screen_name, :string, 28
      end
    end
    
    struct TweetArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, Tweet, 1
      end
    end
    end
  end
