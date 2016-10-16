require 'sinatra/base'
require './lib/player.rb'
require './lib/cpu.rb'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player = $player1.name
    @cpu_weapon = Cpu.new.weapon
    @selection = $player1.type
    erb :play
  end

  post '/rock' do
    @selection = $player1.weapon(params[:rock])
    redirect '/play'
  end

  post '/paper' do
    @selection = $player1.weapon(params[:paper])
    redirect '/play'
  end

  post '/scissors' do
    @selection = $player1.weapon(params[:scissors])
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
