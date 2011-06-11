# encoding: utf-8

Before do
  @dynamite = Dynamite.new
  @flagpole = Flagpole.new
  @response = nil
end

After do
  @dynamite = nil
  @flagpole = nil
  @response = nil
end

def check(method,feed_name,results_format)
  @dynamite.format = results_format

  case feed_name.downcase

  when 'episode detail' then @response = method.episode_detail('aaaaaaaa','bbbbbbbb')
  when 'id type' then @response = method.id_type 'b011s77q'
  when 'list view' then @response = method.list_view('brand','zzzzzzz')
  when 'most popular' then @response = method.most_popular
  when 'multi now next radio' then @response = method.multi_now_next('radio')
  when 'multi now next tv' then @response = method.multi_now_next('tv')
  when 'playlist' then @response = method.playlist('aaaaaaaa','bbbbbbbb')

  else
    fail "Didn't find a case for the provided feed name."
  end
end

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

