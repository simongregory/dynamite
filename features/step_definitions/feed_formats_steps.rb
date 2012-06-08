When /^I request (.*) data in XML$/ do |feed|
  load feed
end

When /^I request (.*) data in json$/ do |feed|
  load_json feed
end

Then /^JSON should be returned$/ do
  result.should =~ /\A\{/
end

Then /^XML should be returned$/ do
  result.should =~ /\A\<\?xml/
  result.should =~ /(ion|playlist) xmlns=\"http:\/\/bbc.co.uk\/2008\/(iplayer|emp)\/(ion|playlist).*/
end
