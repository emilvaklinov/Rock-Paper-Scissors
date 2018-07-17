require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('./models/game')
also_reload('./models/*')

get '/:player1/:hand1/:player2/:hand2' do
  game = Game.new(params[:player1], params[:hand1],
    params[:player2], params[:hand2])
  @game_result = game.compare
  erb(:result)
end

get '/' do
  erb(:rules)
end
get '/' do
  erb(:play)
end
