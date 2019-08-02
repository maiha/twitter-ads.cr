class CurlCmd
  var skip_headers : Set(String) = Set{"host", "content-length"}
  var multiline : Bool = false

  def initialize(@uri : URI, @http : HTTP::Client, @req : HTTP::Request)
  end

  def build : String
    delimiter = multiline ? "\\\n  " : " "

    String.build do |s|
      s << "curl"
      s << " -X #{@req.method}" if @req.method != "GET"
      s << " '#{full_url}'"
      @req.headers.each do |k, v|
        if ! skip_headers.includes?(k.downcase)
          s << delimiter
          s << "-H '#{k}: %s'" % v.join(", ")
        end
      end
      data = body
      if !data.empty?
        s << delimiter
        s.puts "-d@- <<EOF"
        s.puts data
        s.puts "EOF"
      end
    end
  end

  private def body
    raw = String.build do |s|
      @req.to_io(s)
    end
    raw.split(/\r\n\r\n/,2).last?.to_s
  end

  private def full_url : String
    uri = @uri.dup
    uri.path = @req.path
    uri.query = @req.query_params.to_s
    uri.to_s.chomp("?")
  end
end
