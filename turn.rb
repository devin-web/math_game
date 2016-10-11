require './question.rb'

module MathGame

  class Turn

    def initialize()
      @question = Question.new
    end

    def advance( player_num )
      @question.ask player_num
    end
  end

end