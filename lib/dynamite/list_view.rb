# encoding: utf-8

class ListView < Feed
  def initialize(args)
    super(args)
    type = args[:type] #should be 'brand|series'
    id = args[:id]
    @url = "#{@base_path}/iplayer/ion/listview/#{type}/#{id}/media_set/#{@media_set}/available_within/168"
  end
end