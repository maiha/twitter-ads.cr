module TwitterAds
  class RateLimit
    enum State
      NONE
      EXCEEDED
      OK
      ERROR
    end

    var state     : State
    var limit     : Int32
    var remaining : Int32
    var reset     : Int32
    var error     : Exception

    def initialize(@state, limit, remaining, reset, @error = nil)
      case state
      when .ok?
        @limit     = limit.try(&.to_i)     || raise "limit is #{limit.inspect}"
        @remaining = remaining.try(&.to_i) || raise "remaining is #{remaining.inspect}"
        @reset     = reset.try(&.to_i)     || raise "reset is #{reset.inspect}"
      end
    rescue err
      @error = err
    end

    def available? : Bool
      state.ok? && remaining > 0
    end

    def to_s(io : IO)
      case state
      when .ok?
        io << "%s/%s" % [remaining? || "---", limit? || "---"]
      else
        if err = error?
          io << err.to_s
        else
          io << state.to_s
        end
      end
    end

    def inspect(io : IO)
      io << "RateLimit(%s, reset=%s)" % [to_s, reset? || "---"]
    end
  end

  class RateLimit
    def self.none
      new(State::NONE, nil, nil, nil)
    end

    def self.error(e)
      new(State::ERROR, nil, nil, nil, e)
    end

    def self.ok(limit, remaining, reset)
      new(State::OK, limit, remaining, reset)
    end

    def self.parse(headers : HTTP::Headers)
      if headers["x-rate-limit-reset"]?
        ok(
          headers["x-rate-limit-limit"]?,
          headers["x-rate-limit-remaining"]?,
          headers["x-rate-limit-reset"]?,
        )
      elsif headers["x-cost-rate-limit-reset"]?
        ok(
          headers["x-cost-rate-limit-limit"]?,
          headers["x-cost-rate-limit-remaining"]?,
          headers["x-cost-rate-limit-reset"]?,
        )
      else
        none
      end
    end
  end
end
