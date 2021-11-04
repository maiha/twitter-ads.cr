## Generated from string_array.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct StringArray
      include ::Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, :string, 1
      end
    end
    end
  end
