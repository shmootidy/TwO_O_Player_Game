class Game
  attr_reader :player1, :player2

  def initialize
    puts "Welcome to BATTLE ROYALE - THE SUM EDITION!"
    puts "Winner takes all. Choose your competitor wisely."
    puts "Press enter to begin."
    gets.chomp
    @player1 = Player.new(1)
    @player2 = Player.new(2)
    next_turn
  end

  def next_turn
    @turn = Turn.new
    process_turn
  end

  def process_turn
    @current_player = @turn.current_player
    @other_player = @current_player % 2 + 1
    unless @turn.good_response
      if @current_player == 1
        @player1.lose_life
      else
        @player2.lose_life
      end
    end

    if player1.lives > 0 and player2.lives > 0 # ooohh of course! It's reading from the attr
      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
      puts ""
      puts "----- NEW TURN -----"
      puts "Player #{@other_player}: Ready? Press enter."
      gets.chomp
      next_turn
    else
      print_end_message
    end
  end

  def print_end_message
    winning_score = @other_player == 1 ? "#{player1.lives}" : "#{player2.lives}" << "/3"
    puts "And it was your last life..."
    puts ""
    puts "WE HAVE A WINNER!"
    puts "INTRODUCING THE NEW CHAMPION OF THE UNIVERSE!"
    puts "Player #{@other_player} wins with " + winning_score + " lives remaining."
    puts "Good job, Player #{@other_player}. Good luck next time, Player #{@current_player}."
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end

end
