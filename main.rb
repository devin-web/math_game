require './game.rb'
require './turn.rb'
require './question.rb'
require './player.rb'

my_game = MathGame::Game.new

while my_game.on_going?
  my_game.next_turn
end
