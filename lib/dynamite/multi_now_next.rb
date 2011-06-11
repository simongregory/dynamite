# encoding: utf-8

class MultiNowNext < Feed
  def initialize(args)
    super(args)
    type = args[:type] || 'tv' # can be 'radio' or 'tv'.
    @url = "#{@base_path}/iplayer/ion/multinownext/service_type/#{type}/simulcast_only/1" #/format/xml
  end
end