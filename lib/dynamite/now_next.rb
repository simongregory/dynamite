# encoding: utf-8

class NowNext < Feed
  def initialize(args)
    super(args)
    service = args[:service] || 'bbc_one_london'
    @url = "#{@base_path}/iplayer/ion/nownext/service/{service}"
  end
end
