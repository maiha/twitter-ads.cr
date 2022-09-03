## Generated from tweets_lookup_error.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct TweetsLookupError
      include ::Protobuf::Message
      
      contract_of "proto2" do
        optional :resource_id, :string, 1
        optional :parameter, :string, 2
        optional :resource_type, :string, 3
        optional :section, :string, 4
        optional :title, :string, 5
        optional :value, :string, 6
        optional :detail, :string, 7
        optional :type, :string, 8
      end
    end
    
    struct TweetsLookupErrorArray
      include ::Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, TweetsLookupError, 1
      end
    end
    end
  end
