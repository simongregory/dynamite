When /^I check the status of the (.*) feed$/ do |feed|
  check feed, 'xml'
end

Then /^the HTTP response code should be (\d+)$/ do |code|
  @dynamite.feed.code.should == code
end
