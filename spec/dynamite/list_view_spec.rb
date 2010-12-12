# encoding: utf-8

require File.join(File.dirname(__FILE__), "/../spec_helper")

describe ListView, "when first created" do
  
  include FeedHelper
  
  before do
    args = arg_hash('http://www.bbc.co.uk','abcdefgh','zyxwvu','pc-download')
    @feed = ListView.new(args)
  end
  
  it "should be a ListView" do
    @feed.instance_of?(ListView).should == true
  end
  
  it "should be a Feed" do
    @feed.is_a?(Feed).should == true
  end
end