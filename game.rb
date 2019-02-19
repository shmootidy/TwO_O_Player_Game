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
      print_end_message
    else
      puts "Player 1 wins with #{@player1.lives}/3"
      print_end_message
    end
  end

  def print_end_message
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end


end
