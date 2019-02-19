class Question
  attr_reader :good_response

  def initialize(current_player)
    @current_player = current_player
    @question = generate_question
    @answer = gets.chomp.to_i
    @good_response = good_response?
  end

  def generate_question
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
    num1 = numbers.sample
    num2 = numbers.sample
    @solution = num1 + num2
    puts "Player #{@current_player}: What does #{num1} plus #{num2} equal?"
  end

  def good_response?
    if @answer == @solution
      puts "Hey! Good one."
      true
    else
      puts "Oof! That's gonna cost you..."
      false
    end
  end

end
