class Turn
  attr_reader :current_player

  def initialize
    @current_player = 1
    question = Question.new
  end

end