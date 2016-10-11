
module MathGame

  class Question
    def ask( player_num )
      operand1 = rand(1..20)
      operand2 = rand(1..20)
      print 'Player ' + player_num.to_s + ': What does ' + operand1.to_s + ' plus ' + operand2.to_s + " equal?\n> "

      response = gets.chomp
      response = response.to_i

      if response == operand1 + operand2
        puts 'Good Job!'
        return true
      else
        puts 'What? Really?'
        return false
      end
    end
  end
end
