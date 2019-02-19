class Game
  attr_reader :player1, :player2

  def initialize
    @player1 = Player.new(1)
    @player2 = Player.new(2)
    next_turn
  end

  def next_turn
    @turn = Turn.new
    process_turn
  end

  def process_turn
    current_player = @turn.current_player + 1
    unless @turn.good_response
      if current_player == 1
        @player1.lose_life
      else
        @player2.lose_life
      end
    end

    if player1.lives > 0 and player2.lives > 0 # wtf? Ive been successfully passing these without the @ all this time??
      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
      puts "----- NEW TURN -----"
      next_turn
    elsif player1.lives == 0
      puts "Player 2 wins with #{@player2.lives}/3"
      puts "----- GAME OVER -----"
      puts "Good bye!"
    else
      puts "Player 2 wins with #{@player2.lives}/3"
      puts "----- GAME OVER -----"
      puts "Good bye!"
    end
    # while player1.lives > 0 and player2.lives > 0
    #   puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
    #   puts "----- NEW TURN -----"
    #   next_turn
    # end
    # if end message is here, it'll print as many times as this function runs, so...
  end

end
