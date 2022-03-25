module TwitterAds
  module Jq
    abstract def run(filter : String, json : String) : String
  end

  class JqCommand
    include Jq

    def initialize(@debug : Bool = false)
    end
    
    def run(filter : String, source : String) : String
      stdout = Process.run("jq",  {"-r", filter}, input: IO::Memory.new(source)) do |proc|
        proc.output.gets_to_end
      end

      if @debug
        STDERR.puts "=== filter ==========================================================="
        STDERR.puts filter
        STDERR.puts "--- source -----------------------------------------------------------"
        STDERR.puts source
        STDERR.puts "--- stdout -----------------------------------------------------------"
        STDERR.puts stdout
      end

      return stdout
    end
  end
end
