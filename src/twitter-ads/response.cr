
module TwitterAds
  class Response
    var code : Int32
    var http : HTTP::Client::Response
    var rate_limit : String
    var rate_limit_remaining : String
    var rate_limit_reset : Int32
    var req : Request

    delegate headers, body, success?, to: http

    def self.new(res : Response)
      new(res.http, res.req?)
    end

    def initialize(@http, @req = nil)
      @code = http.status_code
      if headers["x-rate-limit-reset"]?
        @rate_limit           = headers["x-rate-limit-limit"]?
        @rate_limit_remaining = headers["x-rate-limit-remaining"]?
        @rate_limit_reset     = headers["x-rate-limit-reset"]?.try(&.to_i)
#      elsif headers["x-cost-rate-limit-reset"]?
#        @rate_limit           = headers["x-cost-rate-limit-limit"]?.try(&.first?#)
#        @rate_limit_remaining = headers["x-cost-rate-limit-remaining"]?.try(&.first?)
#        @rate_limit_reset     = headers["x-cost-rate-limit-reset"]?.try(&.first?.try(&.to_i))
      end
    end

    def body! : String
      if success?
        return body
      else
        raise TwitterAds::Api::Error.new(http)
      end
    end

    class GeneralParser
      JSON.mapping({
        next_cursor: String?,
        data: String,
      })
    end  
  end
end
