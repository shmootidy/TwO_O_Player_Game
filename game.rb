class Game

  def initialize
    player1 = Player.new
    player2 = Player.new
    next_turn
  end

  def next_turn
    turn = Turn.new
  end

end
