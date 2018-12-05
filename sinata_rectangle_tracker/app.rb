require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/.rb')
require('./lib/rectangle')

  get('/') do
    erb(:input)
  end

  post('/output') do
    length = params.fetch("length")
    width = params.fetch("width")
    if length == width
      @rectangle = "This is a square"
    else
      @rectangle = "This is not a square"
    end
    erb(:output)
  end
