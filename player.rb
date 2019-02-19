class Player
  attr_reader :lives, :speak, :bark

  def initialize
    @lives = 3
  end

  def lose_life
    @lives -= 1
    puts "This player has #{@lives} lives"
  end

end

# two instances of this class will be created: player1 and player2