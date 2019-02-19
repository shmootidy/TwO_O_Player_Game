class Player
  attr_reader :lives

  def initialize
    @lives = 3
    puts "caw!"
  end

  def lose_life
    @lives -= 1
  end

end

# two instances of this class will be created: player1 and player2