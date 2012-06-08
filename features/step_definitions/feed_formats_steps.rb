When /^I request (.*) data in XML$/ do |feed|
  check feed, 'xml'
end

When /^I request (.*) data in json$/ do |feed|
  check feed, 'json'
end

Then /^JSON should be returned$/ do
  @dynamite.feed.result.should =~ /\A\{/
end

Then /^XML should be returned$/ do
  @dynamite.feed.result.should =~ /\A\<\?xml/
  @dynamite.feed.result.should =~ /(ion|playlist) xmlns=\"http:\/\/bbc.co.uk\/2008\/(iplayer|emp)\/(ion|playlist).*/
end
