# encoding: utf-8

module FeedHelper
  def arg_hash(base,epid,vpid,media_set)
    { :base_path => base, :media_set => media_set, :epid => epid, :vpid => vpid }
  end
end
