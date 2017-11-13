require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "secret"
  end



  get '/' do

    erb :index
  end


  post '/checkout' do
    @session = session
    @session[params.keys[0]]=params[params.keys[0]]
    erb :checkout
  end
end
