module MathGame

  class Player

    def initialize
      @lives = 3
    end

    def lose_a_life
      @lives -= 1
    end

    def dead?
      @lives < 1
    end

    def get_state
      @lives.to_s + '/3'
    end
  end
end