## Generated from authenticated_user_access.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct AuthenticatedUserAccess
      include ::Protobuf::Message
      
      contract_of "proto2" do
        optional :user_id, :int64, 1
        repeated :permissions, :string, 2
        optional :account_id, :string, 3
      end
    end
    
    struct AuthenticatedUserAccessArray
      include ::Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AuthenticatedUserAccess, 1
      end
    end
    end
  end
