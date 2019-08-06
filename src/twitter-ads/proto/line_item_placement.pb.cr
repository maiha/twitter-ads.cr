## Generated from proto/line_item_placement.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct LineItemPlacement
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :product_type, :string, 1
        repeated :placements, :string, 2
        optional :account_id, :string, 3
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
