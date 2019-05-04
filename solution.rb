require 'sinatra'
enable :sessions

get '/' do
    session[:contador] = 0
    @contador = session[:contador]
    erb :index
end

post '/' do
    session[:contador] = session[:contador] + 1
    @contador = session[:contador]
    erb :index
end

