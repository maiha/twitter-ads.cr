## Generated from user.proto
require "protobuf"

module TwitterAds
  module Proto
    
    struct User
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :name, :string, 1
        optional :friends_count, :int64, 2
        optional :screen_name, :string, 3
        optional :location, :string, 4
        optional :url, :string, 5
        optional :profile_image_url, :string, 6
        optional :profile_background_color, :string, 7
        optional :profile_use_background_image, :bool, 8
        optional :is_translator, :bool, 9
        optional :geo_enabled, :bool, 10
        optional :description, :string, 11
        optional :profile_link_color, :string, 12
        optional :id_str, :string, 13
        optional :listed_count, :int64, 14
        optional :default_profile_image, :bool, 15
        optional :followers_count, :int64, 16
        optional :profile_image_url_https, :string, 17
        optional :profile_sidebar_border_color, :string, 18
        optional :profile_background_image_url, :string, 19
        optional :favourites_count, :int64, 20
        optional :default_profile, :bool, 21
        optional :id, :int64, 22
        optional :profile_background_tile, :bool, 23
        optional :contributors_enabled, :bool, 24
        optional :created_at, :string, 25
        optional :profile_sidebar_fill_color, :string, 26
        optional :translator_type, :string, 27
        optional :profile_text_color, :string, 28
        optional :verified, :bool, 29
        optional :profile_banner_url, :string, 30
        optional :statuses_count, :int64, 31
        optional :profile_background_image_url_https, :string, 32
        optional :is_translation_enabled, :bool, 33
      end
    end
    
    struct UserArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, User, 1
      end
    end
    end
  end
