class Turn
  attr_reader :current_player, :good_response

  @@turns = []

  def initialize
    @current_player = (@@turns.length % 2) + 1
    question = Question.new(@current_player)
    @good_response = question.good_response
    @@turns << 1
  end

end