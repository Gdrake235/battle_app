require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    'Hello Battle!'
    erb :index
  end
  get '/test' do
    'Testing infrastructure working!'
  end
  post '/names' do
    @player_1_name = params[:player_1_name]
    @player_2_name = params[:player_2_name]
    erb :play
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end