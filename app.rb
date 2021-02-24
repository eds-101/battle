# Battle App
require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'
  # configure(:development) { set :session_secret, "something" }

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end
  
  # using GET because not changing the state of the program.
  get '/attack' do
    @game = $game
    @game.attack(@game.opponent_of(@game.current_turn))
    erb :attack
  end


  post '/switch_turns' do
    p '/switch turns route being reached'
    $game.switch_turns
    p 'turns switched'
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
