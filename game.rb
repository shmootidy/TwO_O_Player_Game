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
    puts @turn.good_response
  end

end
