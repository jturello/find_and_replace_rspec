require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/find_and_replace')
require('pry')

get('/') do
  erb(:form)
end

get('/result') do
  @text = params.fetch('text')
  @optradio = params.fetch('optradio')
  @search_string = params.fetch('search_string')
  @replacement = params.fetch('replacement')

  puts @optradio

  @text.find_and_replace(@search_string, @replacement)

  erb(:replaced_text)
end
