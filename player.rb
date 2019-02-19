class Player
  attr_reader :lives

  def initialize(player_number)
    @player_number = player_number
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

end

# two instances of this class will be created: player1 and player2