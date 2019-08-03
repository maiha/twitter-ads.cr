require "../response"
require "../account"

module TwitterAds::Api
  class Accounts < TwitterAds::Response
    include Enumerable(Account)

    class Parser
      JSON.mapping({
        next_cursor: String?,
        data: Array(Account),
      })

      def accounts : Array(Account)
        data
      end
    end

    var parser : Parser = Parser.from_json(body!)

    delegate each, to: parser.accounts

    def next_cursor? : String?
      parser.next_cursor
    end

    def next? : Accounts?
      next_cursor? ? self.next() : nil
    end

    def next : Accounts
      req = req?.try(&.dup) || raise "no request bound (#{self.class})"
      count  = (req.params["count"]? || 200).to_i
      cursor = next_cursor? || raise "no cursors (#{self.class})"
      req.client.accounts(count: count, cursor: cursor)
    end
  end
end

class TwitterAds::Client
  def accounts(count : Int32 = 200, cursor : String = "") : Api::Accounts
    res = get("/5/accounts.json", {"count" => count.to_s, "cursor" => cursor})
    Api::Accounts.new(res)
  end
end
