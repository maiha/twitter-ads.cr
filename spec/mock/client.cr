class Mock::Client < TwitterAds::Client
  var force_mock_file : String

  def execute(req : TwitterAds::Request) : TwitterAds::Response
    mock = (File.dirname(__FILE__) + req.resource + ".json").sub(/\.json\.json$/, ".json")
    if file = force_mock_file?
      mock = File.dirname(mock) + "/" + file
    end

    if File.exists?(mock)
      res = HTTP::Client::Response.new(200, File.read(mock))
    else
      res = HTTP::Client::Response.new(400, "Mock file not found: #{mock}")
    end
    TwitterAds::Response.new(res)
  rescue err
    res = HTTP::Client::Response.new(500, err.to_s)
    TwitterAds::Response.new(res)
  end
end
