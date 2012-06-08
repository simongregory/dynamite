module Client
  def dynamite
    @dynamite ||= Dynamite.new
  end

  def load(feed)
    feed.gsub!(' ', '_')
    feed.downcase!

    begin
      dynamite.send(feed)
    rescue Exception => e
      fail "Didn't find a case for the provided feed name: '#{feed}'."
    end
  end

  def load_json(feed)
    dynamite.format = 'json'
    load(feed)
  end

  def result
    dynamite.feed.result
  end

  def result_code
    dynamite.feed.code
  end

  def clear
    @dynamite = nil
  end
end

World Client
