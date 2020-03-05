require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do
    enable :sessions
    set :session_secret, "password"
  end 
  
  get '/' do
    session["name"] = :item
    @session = session
    erb :index
  end

    

end