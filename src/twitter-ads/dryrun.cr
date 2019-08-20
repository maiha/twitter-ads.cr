module TwitterAds
  class Dryrun < Exception
    var uri  : URI
    var http : HTTP::Client
    var req  : HTTP::Request

    def curl : String
      CurlCmd.new(uri, http, req).build
    end

    def to_s(io : IO)
      io << curl.to_s
    end
  end
end
