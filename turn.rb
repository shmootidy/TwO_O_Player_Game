class Turn
  attr_reader :current_player, :good_response

  def initialize
    @current_player = 1
    question = Question.new
    @good_response = question.good_response
    # game.process_turn(@good_response, @current_player)
    switch_player
  end

  def switch_player
    if @current_player == 1
      @current_player = 2
    else
      @current_player = 1
    end
  end

end