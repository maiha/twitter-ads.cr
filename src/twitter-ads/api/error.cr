module TwitterAds::Api
  class Error < Exception
    var res : HTTP::Client::Response

    def initialize(@res : HTTP::Client::Response)
      super("#{res.status_code} #{res.body}")
    end
  end
end
