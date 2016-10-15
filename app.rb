require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  post '/weapon' do
    session[:rock] = params[:rock]
    session[:paper] = params[:paper]
    session[:scissors] = params[:scissors]
    redirect '/play'
  end

  get '/play' do
    @player = session[:player_name]
    @selection = session[:rock]
    erb :play
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
