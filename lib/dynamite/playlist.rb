# encoding: utf-8

class Playlist < Feed
  def initialize(args)
    super(args)
    @vpid = args[:vpid] #8 chars alpha numeric
    @epid = args[:epid] #8 chars alpha numeric
    @url = "#{@base_path}/iplayer/playlist/#{@epid}/#{@vpid}/media_set/#{@media_set}"
  end
end