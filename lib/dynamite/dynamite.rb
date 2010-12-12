# encoding: utf-8

#
# Mix the nitroglycerine.
#
class Dynamite
  attr_reader :base_path, :media_set

  def initialize(args={})
    @base_path = args[:base_path] || "http://www.bbc.co.uk"
    @media_set = args[:media_set] || 'pc-download'
  end

  def most_popular
    feed = MostPopular.new(basic_args)
    feed.load
  end

  def list_view(type,id)
    args = basic_args.merge( { :type => type, :id => id  } )
    feed = ListView.new(args)
    feed.load
  end

  def id_type(id)
    args = basic_args.merge( { :id => id  } )
    feed = IDType.new(args)
    feed.load
  end

  def episode_detail(epid,vpid)
    args = basic_args.merge( { :epid => epid, :vpid => vpid  } )
    feed = EpisodeDetail.new(args)
    feed.load
  end

  def playlist(epid,vpid)
    args = basic_args.merge( { :epid => epid, :vpid => vpid  } )
    feed = Playlist.new(args)
    feed.load
  end

  private

  def basic_args
    { :base_path => @base_path, :media_set => @media_set }
  end

end