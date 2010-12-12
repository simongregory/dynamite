# encoding: utf-8

require File.join(File.dirname(__FILE__), "/../spec_helper")

describe Playlist, "when first created" do
  
  include FeedHelper
  
  before do
    args = arg_hash('http://www.bbc.co.uk','abcdefgh','zyxwvu','pc-download')
    @feed = Playlist.new(args)
  end
  
  it "should be a Playlist" do
    @feed.instance_of?(Playlist).should == true
  end
  
  it "should be a Feed" do
    @feed.is_a?(Feed).should == true
  end
end