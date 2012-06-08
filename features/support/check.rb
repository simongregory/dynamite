def check(method,feed_name,results_format)
  @dynamite.format = results_format

  case feed_name.downcase

  when 'episode detail' then @response = method.episode_detail('aaaaaaaa','bbbbbbbb')
  when 'list view' then @response = method.list_view('brand','zzzzzzz')
  when 'most popular' then @response = method.most_popular
  when 'multi now next radio' then @response = method.multi_now_next('radio')
  when 'multi now next tv' then @response = method.multi_now_next('tv')
  when 'now next' then @response = method.now_next
  when 'playlist' then @response = method.playlist('b01jc7xv', 'b01jc7rc')

  else
    fail "Didn't find a case for the provided feed name."
  end
end
