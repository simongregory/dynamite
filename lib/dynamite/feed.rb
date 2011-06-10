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
  end

  def uri
    URI.parse(@url)
  end

  def headers
    # 'Accept' => "application/json"
    # "Accept-Encoding" => "gzip" # Do we need to set this explicitly.
    {
      'Accept' => "application/xml",
      'User-Agent' => "#{ION::USER_AGENT}-#{ION::VERSION::STRING}"
    }
  end

  def load
    request = Net::HTTP::Get.new(uri.path,headers)
    result = Net::HTTP.start(uri.host, uri.port) {|http|
      http.request(request)
    }
    @result = result.body
  end
end
