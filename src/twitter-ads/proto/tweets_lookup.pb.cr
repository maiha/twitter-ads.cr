## Generated from tweets_lookup.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct TweetsLookup
      include ::Protobuf::Message
      
      contract_of "proto2" do
        optional :author_id, :string, 1
        optional :conversation_id, :string, 2
        optional :created_at, :string, 3
        optional :lang, :string, 4
        optional :id, :string, 5
        optional :reply_settings, :string, 6
        optional :source, :string, 7
        optional :text, :string, 8
      end
    end
    
    struct TweetsLookupArray
      include ::Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, TweetsLookup, 1
      end
    end
    end
  end
