class TwitterAds::User
  JSON.mapping({
    name:                               String? , # "Twitter API"
    friends_count:                      Int64?  , # 79
    screen_name:                        String? , # "TwitterAPI"
    location:                           String? , # "San Francisco, CA"
    url:                                String? , # "https://t.co/8IkCzCDr19"
    profile_image_url:                  String? , # "http://pbs.twimg.com/profile_images/942858479592554497/BbazLO9L_normal.jpg"
    profile_background_color:           String? , # "FFFFFF"
    profile_use_background_image:       Bool?   , # false
    is_translator:                      Bool?   , # false
    geo_enabled:                        Bool?   , # false
    description:                        String? , # "The Real Twitter API. Tweets about API changes, service issues and our Developer Platform. Don't get an answer? It's on my website."
    profile_link_color:                 String? , # "F5560C"
    id_str:                             String? , # "6253282"
    listed_count:                       Int64?  , # 2973
    default_profile_image:              Bool?   , # false
    followers_count:                    Int64?  , # 399568
    profile_image_url_https:            String? , # "https://..."
    profile_sidebar_border_color:       String? , # "FFFFFF"
    profile_background_image_url:       String? , # "http://..."
    favourites_count:                   Int64?  , # 1001
    default_profile:                    Bool?   , # false
    id:                                 Int64   , # 6253282
    profile_background_tile:            Bool?   , # false
    contributors_enabled:               Bool?   , # false
    created_at:                         String? , # "Mon Sep 27 15:08:52 +0000 2010"
    profile_sidebar_fill_color:         String? , # "DDEEF6"
    translator_type:                    String? , # "none"
    profile_text_color:                 String? , # "333333"
    verified:                           Bool?   , # true
    profile_banner_url:                 String? , # "https://..."
    statuses_count:                     Int64?  , # 157377
    profile_background_image_url_https: String? , # "https://..."
    is_translation_enabled:             Bool?   , # false
  })

  def to_pb
    TwitterAds::Proto::User.new(
      name: name,
      friends_count: friends_count,
      screen_name: screen_name,
      location: location,
      url: url,
      profile_image_url: profile_image_url,
      profile_background_color: profile_background_color,
      profile_use_background_image: profile_use_background_image,
      is_translator: is_translator,
      geo_enabled: geo_enabled,
      description: description,
      profile_link_color: profile_link_color,
      id_str: id_str,
      listed_count: listed_count,
      default_profile_image: default_profile_image,
      followers_count: followers_count,
      profile_image_url_https: profile_image_url_https,
      profile_sidebar_border_color: profile_sidebar_border_color,
      profile_background_image_url: profile_background_image_url,
      favourites_count: favourites_count,
      default_profile: default_profile,
      id: id,
      profile_background_tile: profile_background_tile,
      contributors_enabled: contributors_enabled,
      created_at: created_at,
      profile_sidebar_fill_color: profile_sidebar_fill_color,
      translator_type: translator_type,
      profile_text_color: profile_text_color,
      verified: verified,
      profile_banner_url: profile_banner_url,
      statuses_count: statuses_count,
      profile_background_image_url_https: profile_background_image_url_https,
      is_translation_enabled: is_translation_enabled,
    )
  end
end
