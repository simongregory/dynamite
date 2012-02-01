# encoding: utf-8

#
# Abstract feed class, use one of the concrete implementations - ListView,
# EpisodeDetail, or Playlist.
#
class Feed
  attr_reader :url, :result

  def initialize(args)
    @base_path = args[:base_path]
    @media_set = args[:media_set]
    @format    = args[:format]
  end

  def uri
    URI.parse(@url)
  end

  def headers
    # "Accept-Encoding" => "gzip" #do we need to set this explicitly?
    {
      'Accept' => "application/#{@format}",
      'User-Agent' => "#{ION::USER_AGENT}-#{ION::VERSION::STRING}"
    }
  end

  def load
    request = Net::HTTP::Get.new(uri.path,headers)
    result = Net::HTTP.start(uri.host, uri.port) {|http|
      http.request(request)
    }
    #result.code
    @result = result.body
  end

  def head
    request = Net::HTTP::Head.new(uri.path,headers)
    result = Net::HTTP.start(uri.host, uri.port) {|http|
      http.request(request)
    }
    puts result.code
    result
  end
end
