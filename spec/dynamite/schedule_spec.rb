# encoding: utf-8

require File.join(File.dirname(__FILE__), "/../spec_helper")

describe Schedule, "when first created" do

  include FeedHelper

  before do
    @feed = Schedule.new({ :base_path => 'http://www.bbc.co.uk' } )
  end

  it "should be a NowNext" do
    @feed.instance_of?(Schedule).should == true
  end

  it "should be a Feed" do
    @feed.is_a?(Feed).should == true
  end

  it "should have the feed url" do
    @feed.url.should =~ /^http:/
    @feed.url.should =~ /.*bbc\.co\.uk/
    @feed.url.should =~ /schedule\/service\/bbc_one_london/
  end
end
