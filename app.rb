require_relative 'config/environment'

class App < Sinatra::Base
    configure do 
        enable :sessions
        set :secret_session, "secret121212"
    end
    get '/' do 
        @session = session
        erb :index
    end
    post '/checkout' do 
        @session = session 
        @item = params[:item]
        session[:item] = params[:item]
        erb :checkout
    end

end