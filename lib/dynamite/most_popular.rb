# encoding: utf-8

class MostPopular < Feed
  def initialize(args)
    super(args)
    @url = "#{@base_path}/iplayer/ion/mostpopular/"
  end
end
