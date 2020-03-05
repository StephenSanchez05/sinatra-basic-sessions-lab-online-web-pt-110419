require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do
    enable :sessions
    set :session_secret, "password"
  end 
  
  get '/' do
    session["item"] = :item
    @session = session
    erb :index
  end

  post '/'
    

end