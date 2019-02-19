class Turn
  attr_reader :current_player, :good_response

  def initialize
    @current_player = 'Player 1'
    question = Question.new(@current_player)
    @good_response = question.good_response
  end

  def switch_player
    if @current_player == 'Player 1'
      @current_player = 'Player 2'
    else
      @current_player = 'Player 1'
    end
  end

end