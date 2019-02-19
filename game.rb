class Game
  attr_reader :player1, :player2

  def initialize
    @player1 = Player.new
    @player2 = Player.new
    next_turn
  end

  def next_turn
    @turn = Turn.new
    process_turn
  end

  def process_turn
    unless @turn.good_response
      if @turn.current_player == 1
        @player1.lose_life
      else
        @player2.lose_life
      end
    end
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
    @turn.switch_player

    while player1.lives > 0 and player2.lives > 0
      puts "----- NEW TURN -----"
      next_turn
    end
  end

end
