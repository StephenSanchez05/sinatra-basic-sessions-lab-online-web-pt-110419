require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do
    enable :sessions
    set :session_secret, "password"
  end 
  
  get '/' do
    session[]
    @session = session
    erb :index
  end

    

end