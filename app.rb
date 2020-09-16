require_relative 'config/environment'

class App < Sinatra::Base

    configure do 
        enable :sessions
        set :sessions_secret, "qwerty"
    end

    get '/' do
        erb :index
    end

    post '/checkout' do
        session[:item] = params[:item]
        @session = session
        erb :results
    end





end