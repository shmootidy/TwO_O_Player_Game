class Turn
  attr_reader :current_player

  def initialize
    @current_player = 1
    question = Question.new
    switch_player
  end

  def switch_player
    if @current_player == 1
      @current_player = 2
    else
      @current_player =1
    end
  end

end