module TwitterAds
  class Twurlrc
    var all_credentials = Hash(String, Credential).new
    var default : Credential
    
    record Credential,
      username : String,
      consumer_key : String,
      consumer_secret : String,
      token : String,
      secret : String

    class Parser
      YAML.mapping({
        profiles: Hash(String, Hash(String, Hash(String, String)))?,
        configuration: Hash(String, Array(String))?,
      })
    end

    def self.load_file(path : String) : Twurlrc
      rc = Twurlrc.new
      parser = Parser.from_yaml(File.read(File.expand_path(path)))

      if ps = parser.profiles
        ps.each do |username, profiles|
          profiles.each do |consumer_key, hash|
            key = "#{username}:#{consumer_key}"
            credential = Credential.new(
              hash["username"]?.to_s,
              hash["consumer_key"]?.to_s,
              hash["consumer_secret"]?.to_s,
              hash["token"]?.to_s,
              hash["secret"]?.to_s
            )
            rc.all_credentials[key] = credential
          end
        end
      end

      if c = parser.configuration
        if ary = c["default_profile"]?
          key = ary.join(":")
          rc.default = rc.all_credentials[key]?
        end
      end
      
      return rc
    end
  end
end
