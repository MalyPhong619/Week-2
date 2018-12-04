require('sinatra')
require('sinatra/reloader')

get('/rectangle') do
  @description = "This application will determine whether a rectangle is a square or not."
  erb(:input)
end
