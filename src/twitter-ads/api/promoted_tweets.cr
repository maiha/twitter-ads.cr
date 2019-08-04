require "../response"
require "../promoted_tweet"

module TwitterAds::Api
  class PromotedTweets < TwitterAds::Response
    include Enumerable(TwitterAds::PromotedTweet)

    class Parser
      JSON.mapping({
        next_cursor: String?,
        data: Array(TwitterAds::PromotedTweet),
      })
    end

    var parser : Parser = Parser.from_json(body!)
    delegate each, to: parser.data

    def next_cursor? : String?
      parser.next_cursor
    end
  end
end
