require('sinatra')
require('sinatra/reloader')
require('pry')

  get('/') do
    erb(:input)
  end

  get('/output')
    binding.pry
    erb(:output)
  end
end
