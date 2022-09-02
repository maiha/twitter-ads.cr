
module TwitterAds
  class Response
    var code : Int32
    var http : HTTP::Client::Response
    var rate_limit : RateLimit
    var req : Request

    delegate headers, body, success?, to: http

    def initialize(@http, @req = nil)
      @code = http.status_code
      @rate_limit = RateLimit.parse(headers)
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
      RESOURCE   = {:type => :single, :name => nil, :extra_mappings => nil}
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
        include Indexable(TwitterAds::{{RESOURCE[:name]}})
        def unsafe_fetch(index : Int)
          (parser.data || Array(TwitterAds::{{RESOURCE[:name]}}).new)[index]
        end

        def errors : Array(Hash(String, String))
          parser.errors || Array(Hash(String, String)).new
        end
      {% end %}

      class Parser
        JSON.mapping({
          next_cursor: String?,
          {% if RESOURCE[:type] == :collection %}
            data: Array(TwitterAds::{{RESOURCE[:name]}})?,
            errors: Array(Hash(String, String))?,
          {% end %}
          {% if RESOURCE[:type] == :single %}
            data: TwitterAds::{{RESOURCE[:name]}},
          {% end %}
          {% if RESOURCE[:extra_mappings] %}
            {{RESOURCE[:extra_mappings].id}}
          {% end %}
        })
      end

      var parser : Parser = Parser.from_json(body!)
      def next_cursor? : String?
        parser.next_cursor
      end

      {% if RESOURCE[:type] == :collection %}
        def each
          (parser.data || Array(TwitterAds::{{RESOURCE[:name]}}).new).each do |i|
            {% for ast in BELONGS_TO %}
              i.{{ast.var}} = {{ast.var}}
            {% end %}
            yield(i)
          end
        end
      {% elsif RESOURCE[:type] == :single %}
        def each
          i = parser.data
          {% for ast in BELONGS_TO %}
            i.{{ast.var}} = {{ast.var}}
          {% end %}
          yield(i)
        end
      {% else %}
        # NOP for :none
      {% end %}
    end

    # do nothing to just include Response module
    macro resource_none
      {% RESOURCE[:type] = :none %}
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

    # additional mappings for response parser
    macro resource_extra_mappings(v)
      {% RESOURCE[:extra_mappings] = v %}
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
