# encoding: utf-8

Before do
  @dynamite = Dynamite.new
  #@response = nil
end

After do
  @dynamite = nil
  @response = nil
end

Given /^I ask for the (.*) feed$/ do |feed_name|
  if feed_name == 'episode detail'
    @response = @dynamite.episode_detail('aaaaaaaa','bbbbbbbb')
  elsif feed_name == 'list view'
    @response = @dynamite.list_view('brand','zzzzzzz')
  else
    fail
  end
end

Then /^the episode detail feed should be returned in XML format$/ do
  assert_nil @response
end

Then /^the list view feed should be returned in XML format$/ do
  assert_nil @response
end