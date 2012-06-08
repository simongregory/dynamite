def check(feed, format)
  @dynamite.format = format

  feed.gsub!(' ', '_')
  feed.downcase!

  begin
    @dynamite.send(feed)
  rescue Exception => e
    fail "Didn't find a case for the provided feed name: '#{feed}'."
  end
end
