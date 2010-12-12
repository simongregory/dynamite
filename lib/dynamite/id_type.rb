# encoding: utf-8

class IDType < Feed
  def initialize(args)
    super(args)
    id = args[:id]
    @url = "#{@base_path}/iplayer/ion/id/#{id}/"
  end
end
