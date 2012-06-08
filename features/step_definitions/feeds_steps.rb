# encoding: utf-8

Given /^I ask for the (.*) (xml|json) feed$/ do |feed_name,results_format|
  check @dynamite, feed_name, results_format
end

When /^I check the status of the (.*) feed$/ do |feed_name|
  check @flagpole, feed_name, 'xml'
end

Then /^the HTTP response code should be (\d+)$/ do |arg1|
  @response.should_not be_nil
  @response.code.should == '200'
end

Then /^the (.*) feed should be returned in XML format$/ do |feed_name|
  @response.should_not be_nil
  @response.should =~ /\A\<\?xml/
  @response.should =~ /ion xmlns=\"http:\/\/bbc.co.uk\/2008\/iplayer\/ion.*/
end

Then /^the (.*) feed should be returned in JSON format$/ do |feed_name|
  @response.should_not be_nil
  @response.should =~ /\A\{/
end
