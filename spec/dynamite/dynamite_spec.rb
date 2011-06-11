# encoding: utf-8

require File.join(File.dirname(__FILE__), "/../spec_helper")

describe Dynamite, "when first created" do
  it "should be Dynamite" do
    dynamite = Dynamite.new
    dynamite.is_a?(Dynamite).should == true
  end
  
  it "should have default settings" do
    dynamite = Dynamite.new
    dynamite.base_path.should == "http://www.bbc.co.uk"
    dynamite.media_set.should == "pc-download"
    dynamite.format.should == "xml"
  end
  
  it "can have default settings overridden" do
    bp = 'http://www.test.bbc.co.uk'
    ms = 'pc-download-hd'
    fm = 'json'
    
    args = { :base_path => bp, :media_set => ms, :format => fm,  }
    dynamite = Dynamite.new(args)
    
    dynamite.base_path.should == bp
    dynamite.media_set.should == ms
    dynamite.format.should == fm
  end
end

describe Dynamite, "when loading an Episode Detail feed" do
  it "should load xml" do
    dynamite = Dynamite.new
    feed = dynamite.episode_detail('abcdefg','uvwxyz')
    
    feed.should =~ /ion xmlns=\"http:\/\/bbc.co.uk\/2008\/iplayer\/ion.*/
  end
end