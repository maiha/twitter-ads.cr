## Generated from line_item_placement.proto
require "protobuf"

require "./string_array.pb.cr"

module TwitterAds
  module Proto
    
    struct LineItemPlacement
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :product_type, :string, 1
        repeated :placements, StringArray, 2
      end
    end
    
    struct LineItemPlacementArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, LineItemPlacement, 1
      end
    end
    end
  end
