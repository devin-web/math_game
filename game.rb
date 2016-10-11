require './player.rb'

module MathGame

  class Game

    def initialize()
      @player = ['0', '1']
      @player[0] = Player.new
      @player[1] = Player.new
      @on_going = true
      @players_turn = 0
      @turn = Turn.new
    end

    def next_turn()
      puts '----- NEW TURN -----'
      if( !@turn.advance( @players_turn + 1 ) )
        @player[@players_turn].lose_a_life

        puts 'P1: ' + @player[0].get_state + ' P2: ' + @player[1].get_state
        if( @player[@players_turn].dead? )
          @on_going = false

          winner = ((@players_turn + 1) % 2)
          puts "Player " + (winner + 1).to_s + " won with a score of " + @player[winner].get_state
          puts "----- GAME OVER -----\nGood bye!"
        end
      end
      @players_turn = (@players_turn+1) % 2
    end

    def on_going?
      @on_going
    end
  end

end