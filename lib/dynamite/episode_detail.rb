# encoding: utf-8

class EpisodeDetail < Feed
  def initialize(args)
    super(args)
    @vpid = args[:vpid]
    @epid = args[:epid]
    @url = "#{@base_path}/iplayer/ion/episodedetail/episode/#{@epid}/version/#{@vpid}/media_set/#{@media_set}/allow_unavailable/0"
  end
end
