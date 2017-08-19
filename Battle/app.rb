require 'sinatra/base'
require 'shotgun'

class MyApp < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    $player_1 = Player.new(params[:name])
    $player_2 = Player.new(params[:name2])
    redirect '/play'
  end

  get '/play' do
    @name = $player_1.name
    @name2 = $player_2.name
    erb(:play)
  end

  get '/attack' do
    @name = $player_1.name
    @name2 = $player_1.name
    @name.attack(@name2)
    erb :attack
  end

  run! if app_file == $0
end
