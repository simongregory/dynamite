# encoding: utf-8

When /^I check the status of the (.*) feed$/ do |feed|
  check @flagpole, feed, 'xml'
end

Then /^the HTTP response code should be (\d+)$/ do |code|
  @response.code.should == code
end

Given /^I request (.*) data in XML$/ do |feed|
  check @dynamite, feed, 'xml'
end

Given /^I request (.*) data in json$/ do |feed|
  check @dynamite, feed, 'json'
end

Then /^JSON should be returned$/ do
  @response.should =~ /\A\{/
end

Then /^XML should be returned$/ do
  @response.should =~ /\A\<\?xml/
  @response.should =~ /ion xmlns=\"http:\/\/bbc.co.uk\/2008\/iplayer\/ion.*/
end
