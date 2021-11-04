## Generated from promotable_user.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct PromotableUser
      include ::Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :user_id, :string, 2
        optional :promotable_user_type, :string, 3
        optional :created_at, :string, 4
        optional :updated_at, :string, 5
        optional :deleted, :bool, 6
        optional :account_id, :string, 7
      end
    end
    
    struct PromotableUserArray
      include ::Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, PromotableUser, 1
      end
    end
    end
  end
