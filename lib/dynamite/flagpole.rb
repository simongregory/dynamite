# encoding: utf-8

class Flagpole

  def initialize(args={})
    @base_path = args[:base_path] || "http://www.bbc.co.uk"
    @media_set = args[:media_set] || 'pc-download'
    @format    = args[:format] || 'xml'
  end

  def most_popular
    feed = MostPopular.new(basic_args)
    feed.head
  end

  def list_view(type,id)
    args = basic_args.merge( { :type => type, :id => id  } )
    feed = ListView.new(args)
    feed.head
  end

  def now_next
    NowNext.new(basic_args).head
  end

  def episode_detail(epid,vpid)
    args = basic_args.merge( { :epid => epid, :vpid => vpid  } )
    feed = EpisodeDetail.new(args)
    feed.head
  end

  def playlist(epid,vpid)
    args = basic_args.merge( { :epid => epid, :vpid => vpid  } )
    feed = Playlist.new(args)
    feed.head
  end

  def multi_now_next(service_type='tv')
    args = basic_args.merge( { :type => service_type } )
    feed = MultiNowNext.new(args)
    feed.head
  end

  private

  def basic_args
    { :base_path => @base_path, :media_set => @media_set, :format => @format }
  end

end
