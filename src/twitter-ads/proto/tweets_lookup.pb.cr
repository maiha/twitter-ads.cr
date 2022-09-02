## Generated from tweets_lookup.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct TweetsLookup
      include ::Protobuf::Message
      
      contract_of "proto2" do
        optional :possibly_sensitive, :bool, 1
        optional :author_id, :string, 2
        optional :text, :string, 3
        optional :reply_settings, :string, 4
        optional :conversation_id, :string, 5
        optional :created_at, :string, 6
        optional :id, :string, 7
        optional :lang, :string, 8
        optional :source, :string, 9
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
