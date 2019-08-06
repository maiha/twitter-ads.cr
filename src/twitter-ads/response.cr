
module TwitterAds
  class Response
    var code : Int32
    var http : HTTP::Client::Response
    var rate_limit : String
    var rate_limit_remaining : String
    var rate_limit_reset : Int32
    var req : Request

    delegate headers, body, success?, to: http

    def initialize(@http, @req = nil)
      @code = http.status_code
      if headers["x-rate-limit-reset"]?
        @rate_limit           = headers["x-rate-limit-limit"]?
        @rate_limit_remaining = headers["x-rate-limit-remaining"]?
        @rate_limit_reset     = headers["x-rate-limit-reset"]?.try(&.to_i)
#      elsif headers["x-cost-rate-limit-reset"]?
#        @rate_limit           = headers["x-cost-rate-limit-limit"]?.try(&.first?#)
#        @rate_limit_remaining = headers["x-cost-rate-limit-remaining"]?.try(&.first?)
#        @rate_limit_reset     = headers["x-cost-rate-limit-reset"]?.try(&.first?.try(&.to_i))
      end
    end

    def body! : String
      if success?
        return body
      else
        raise TwitterAds::Api::Error.new(http)
      end
    end

    ######################################################################
    ### support `belongs_to` macro

    macro inherited
      RESOURCE   = {:type => :single, :name => nil}
      BELONGS_TO = [] of ASTNode

      macro finished
        _finish_dsl_
      end
    end

    macro _finish_dsl_
      {% for ast in BELONGS_TO %}
        var {{ast.var}} : {{ast.type}}
      {% end %}

      def self.new(res : Response, {{*BELONGS_TO}})
        _res_ = new(res.http, res.req?)
        {% for ast in BELONGS_TO %}
          _res_.{{ast.var}} = {{ast.var}}
        {% end %}
        return _res_
      end

      {% if RESOURCE[:type] == :collection %}
        include Enumerable(TwitterAds::{{RESOURCE[:name]}})
      {% end %}

      class Parser
        JSON.mapping({
          next_cursor: String?,
          {% if RESOURCE[:type] == :collection %}
            data: Array(TwitterAds::{{RESOURCE[:name]}}),
          {% end %}
          {% if RESOURCE[:type] == :single %}
            data: TwitterAds::{{RESOURCE[:name]}},
          {% end %}
        })
      end

      var parser : Parser = Parser.from_json(body!)
      def next_cursor? : String?
        parser.next_cursor
      end

      {% if RESOURCE[:type] == :collection %}
        def each
          parser.data.each do |i|
            {% for ast in BELONGS_TO %}
              i.{{ast.var}} = {{ast.var}}
            {% end %}
            yield(i)
          end
        end
      {% else %}
        def each
          i = parser.data
          {% for ast in BELONGS_TO %}
            i.{{ast.var}} = {{ast.var}}
          {% end %}
          yield(i)
        end
      {% end %}
    end

    # resource_single ReachEstimate
    macro resource_single(name)
      {% RESOURCE[:type] = :single %}
      {% RESOURCE[:name] = name %}
    end

    # resource_collection Campaign
    macro resource_collection(name)
      {% RESOURCE[:type] = :collection %}
      {% RESOURCE[:name] = name %}
    end

    # belongs_to account_id : String
    #   name: TypeDeclaration
    macro belongs_to(name)
      {% if name.is_a?(TypeDeclaration) %}
        {% BELONGS_TO << name %}
      {% else %}
        {% abort "belongs_to doesn't support " + name.class_name %}
      {% end %}
    end
  end
end
