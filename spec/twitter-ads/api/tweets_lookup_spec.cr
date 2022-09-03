require "../../spec_helper"

describe TwitterAds::Api::TweetsLookup do
  client = Mock::Client.new("CK", "CS", "AT", "AS", "BT")

  ids = ["1519781379172495360","1263145271946551300","1199786642791452673","1136048014974423040"]
  expansions = "attachments.media_keys,attachments.poll_ids,author_id,entities.mentions.username,geo.place_id,in_reply_to_user_id,referenced_tweets.id,referenced_tweets.id.author_id"
  tweet_fields = "attachments,author_id,context_annotations,conversation_id,created_at,entities,geo,id,in_reply_to_user_id,lang,public_metrics,possibly_sensitive,referenced_tweets,reply_settings,source,text,withheld"
  media_fields = "duration_ms,height,media_key,preview_image_url,type,url,width,public_metrics,non_public_metrics,organic_metrics,promoted_metrics,alt_text,variants"
  place_fields = "contained_within,country,country_code,full_name,geo,id,name,place_type"
  poll_fields = "duration_minutes,end_datetime,id,options,voting_status"
  user_fields = "created_at,description,entities,id,location,name,pinned_tweet_id,profile_image_url,protected,public_metrics,url,username,verified,withheld"

  describe "#tweets_lookup" do
    it "returns TwitterAds::TweetsLookup" do
      tweets_lookup = client.tweets_lookup(
        id: ids,
        expansions: expansions, 
        tweet_fields: tweet_fields,
        media_fields: media_fields,
        place_fields: place_fields,
        poll_fields: poll_fields,
        user_fields: user_fields,
      )
      tweets_lookup.size.should eq 4
      tweets_lookup.errors.size.should eq 0

      tweets_lookup = tweets_lookup.first
      tweets_lookup.id.should eq "1519781379172495360"
      tweets_lookup.reply_settings.should eq "everyone"
    end

    it "works with responses where 'data' section does not exist" do
      client.force_mock_file = "tweets-without-data.json"
      tweets_lookup = client.tweets_lookup(
        id: ids,
        expansions: expansions, 
        tweet_fields: tweet_fields,
        media_fields: media_fields,
        place_fields: place_fields,
        poll_fields: poll_fields,
        user_fields: user_fields,
      )
      tweets_lookup.size.should eq 0
      tweets_lookup.errors.size.should eq 2

      tweets_lookup.errors[0].title.should eq "Not Found Error"
      tweets_lookup.errors[0].resource_id.should eq "1352420716931649"
      tweets_lookup.errors[1].title.should eq "Authorization Error"
      tweets_lookup.errors[1].resource_id.should eq "1329348696106967"
    end
  end
end
