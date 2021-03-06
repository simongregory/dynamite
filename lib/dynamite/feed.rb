# encoding: utf-8

#
# Abstract feed class, use one of the concrete implementations - ListView,
# EpisodeDetail, Playlist, NowNext etc.
#
class Feed
  attr_reader :url, :result, :code

  def initialize(args)
    @base_path = args[:base_path]
    @media_set = args[:media_set]
    @format    = args[:format]
  end

  def load
    request = Net::HTTP::Get.new(uri.path,headers)
    result = Net::HTTP.start(uri.host, uri.port) {|http|
      http.request(request)
    }
    @code = result.code
    @result = result.body

    self
  end

  private

  #def head
  #  request = Net::HTTP::Head.new(uri.path,headers)
  #  result = Net::HTTP.start(uri.host, uri.port) {|http|
  #    http.request(request)
  #  }
  #  @code = result.code
  #end

  def headers
    # "Accept-Encoding" => "gzip" #do we need to set this explicitly?
    {
      'Accept' => "application/#{@format}",
      'User-Agent' => "#{ION::USER_AGENT}-#{ION::VERSION::STRING}"
    }
  end

  def uri
    URI.parse(@url)
  end
end
