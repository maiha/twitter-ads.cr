
module TwitterAds
  class Request
    enum Method
      GET
      POST
    end

    var client : Client
    var method : Method
    var resource : String
    var params = Hash(String, String).new
    var http : HTTP::Request

    def initialize(@client, method : Method, @resource, @params)
      case method
      when .get?
        path = resource
        path += "?#{to_query_string(params)}" if params.any?
        req = HTTP::Request.new("GET", path, build_headers)
      when .post?
        body = HTTP::Params.encode(params)
        req = HTTP::Request.new("POST", resource, build_headers, body)
        req.headers["Content-Type"] = "application/x-www-form-urlencoded"
      else
        raise "#{self.class} doesn't support method: #{@method}"
      end
      @http = req
    end

    def perform
      client.execute(req)
    end

    def perform!
      client.execute!(req)
    end

    private def to_query_string(hash : Hash)
      HTTP::Params.build do |form_builder|
        hash.each do |key, value|
          form_builder.add(key, value)
        end
      end
    end

    private def build_headers : HTTP::Headers
      HTTP::Headers{
        "Host"          => host_header,
        "Content-Type"  => "application/json",
        "Accept"        => "application/json",
        "User-Agent"    => client.user_agent,
      }
    end

    def uri
      client.uri
    end

    def full_url : String
      u = uri.dup
      u.path = resource
      u.query = http.query_params.to_s
      u.to_s
    end

    private def host_header
      String.build do |io|
        if host = uri.host
          io << host
        end
        if uri.port && !((uri.scheme == "http" && uri.port == 80) || (uri.scheme == "https" && uri.port = 443))
          io << ':'
          io << uri.port.to_s
        end
      end
    end
  end
end
