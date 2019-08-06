## Generated from proto/user_setting.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct UserSetting
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :notification_email, :string, 1
        optional :contact_phone, :string, 2
        optional :contact_phone_extension, :string, 3
        repeated :subscribed_email_types, :string, 4
        optional :account_id, :string, 5
        optional :user_id, :int64, 6
      end
    end
    
    struct UserSettingArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, UserSetting, 1
      end
    end
    end
  end
