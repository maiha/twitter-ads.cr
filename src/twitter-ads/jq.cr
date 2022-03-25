module TwitterAds
  module Jq
    abstract def run(filter : String, json : String) : String
  end

  class JqCommand
    include Jq
    
    def run(filter : String, json : String) : String
      value = Process.run("jq",  {"-r", filter}, input: IO::Memory.new(json)) do |proc|
        proc.output.gets_to_end
      end

      return value
    end
  end
end
