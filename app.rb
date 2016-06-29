require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/title_case')
require('pry')

get('/') do
  erb(:form)
end

get('/result') do
  erb(:replaced_text)
end
