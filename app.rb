# Battle App
require 'sinatra/base'
require '../lib/player'

class Battle < Sinatra::Base
  enable :sessions
  configure(:development) { set :session_secret, "something" }

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb :play
  end

  # using GET because not changing the state of the program.
  get '/attack' do
    @player_1_name = $player_1.name 
    @player_2_name = $player_2.name
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
