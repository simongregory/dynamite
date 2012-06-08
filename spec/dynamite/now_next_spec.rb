# encoding: utf-8

require File.join(File.dirname(__FILE__), "/../spec_helper")

describe NowNext, "when first created" do

  include FeedHelper

  before do
    @feed = NowNext.new({ :base_path => 'http://www.bbc.co.uk' } )
  end

  it "should be a NowNext" do
    @feed.instance_of?(NowNext).should == true
  end

  it "should be a Feed" do
    @feed.is_a?(Feed).should == true
  end

  it "should have the feed url" do
    @feed.url.should =~ /^http:/
    @feed.url.should =~ /.*bbc\.co\.uk/
    @feed.url.should =~ /nownext\/service_type\/tv/
  end
end
