require_relative 'config/environment'

class App < Sinatra::Base
    configure do 
        enable :sessions
        set :session_secret, "supersecurecode"
    end
   
    get '/' do 
        erb :index 
    end

    post '/checkout' do 
        session[:item] = params.values.join
        @session = session
        erb :item
    end
end
