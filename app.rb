require 'sinatra/base'
require './lib/player.rb'
require './lib/cpu.rb'
require './lib/game.rb'
require 'coveralls'
require 'simplecov'

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
Coveralls.wear! 

class RPS < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_name])
    cpu = Cpu.new
    @game = Game.create(player_1, cpu)
    redirect '/play'
  end

  get '/play' do
    @selection = @game.player_1.type
    @cpu_selection = @game.cpu.weapon
    erb :play
  end

  post '/rock' do
    @selection = @game.player_1.weapon(params[:rock])
    redirect '/play'
  end

  post '/paper' do
    @selection =  @game.player_1.weapon(params[:paper])
    redirect '/play'
  end

  post '/scissors' do
    @selection = @game.player_1.weapon(params[:scissors])
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
