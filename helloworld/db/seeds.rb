greeting_list = ['Hello World', 'Hello Universe']
greeting_list.each do |greeting|
  Greeting.create( greeting: greeting)
end