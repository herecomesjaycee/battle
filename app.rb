require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
  erb(:index)
  end

  post '/names' do
  player_one = Player.new(params[:player_one_name])
  player_two = Player.new(params[:player_two_name])
  @game = Game.new(player_one, player_two)
  redirect '/play'
  end

  get '/play' do
  @game = $game
  redirect('/game_over') if @game.over?
  erb(:play)
  end

  get '/attack' do
  @game = $game
  @game.attack(@game.current_opponent)
  erb(:attack)
  end

  get '/switch' do
  @game = $game
  @game.switch
  redirect '/play'
  end

  get '/game_over' do
  @game = $game
  @game.display_loser
  erb(:game_over)
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end