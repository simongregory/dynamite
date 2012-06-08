# encoding: utf-8

class Schedule < Feed
  def initialize(args)
    super(args)
    service = args[:service] || 'bbc_one_london'
    @url = "#{@base_path}/iplayer/ion/schedule/service/#{service}"
  end
end
