When /^I check the status of the (.*) feed$/ do |feed|
  load feed
end

Then /^the HTTP response code should be (\d+)$/ do |code|
  result_code.should == code
end
