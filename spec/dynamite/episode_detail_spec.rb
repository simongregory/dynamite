# encoding: utf-8

require File.join(File.dirname(__FILE__), "/../spec_helper")

describe EpisodeDetail, "when first created" do
  
  include FeedHelper
  
  before do
    args = arg_hash('http://www.bbc.co.uk','abcdefgh','zyxwvu','pc-download')
    @feed = EpisodeDetail.new(args)
  end
  
  it "should be a EpisodeDetail" do
    @feed.instance_of?(EpisodeDetail).should == true
  end
  
  it "should be a Feed" do
    @feed.is_a?(Feed).should == true
  end
  
  #it "should have a expected url" do
  #  @feed.url.should =~ /wwww\.bbc\.co\.uk/
  #end
  
end