class Mock::Client < TwitterAds::Client
  def get(path : String, params = {} of String => String)
    File.read(File.dirname(__FILE__) + path)
  end

  def post(path : String, form = {} of String => String)
    File.read(File.dirname(__FILE__) + path)
  end
end
