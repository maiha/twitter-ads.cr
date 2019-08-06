## Generated from proto/content_category.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct ContentCategory
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :name, :string, 2
        repeated :iab_categories, :string, 3
      end
    end
    
    struct ContentCategoryArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ContentCategory, 1
      end
    end
    end
  end
