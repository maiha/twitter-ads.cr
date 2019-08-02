module TwitterAds
  class Dryrun < Exception
    var uri  : URI
    var http : HTTP::Client
    var req  : HTTP::Request

    def curl : String
      CurlCmd.new(uri, http, req).build
    end
  end
end
