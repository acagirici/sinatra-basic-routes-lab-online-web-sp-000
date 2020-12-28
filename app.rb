require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do 
    "Hello, World!"
  end
  
  get '/name' do
    @name = Name.all
    erb :'name/index.html.erb'
end
