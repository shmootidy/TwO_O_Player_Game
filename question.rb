class Question
  attr_reader :good_response

  def initialize
    @question = "#{generate_question}"
    @answer = gets.chomp.to_i
    @good_response = good_response? # turn this into a conditional that ... does something
    puts @good_response
  end

  def generate_question
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
    num1 = numbers.sample
    num2 = numbers.sample
    @solution = num1 + num2
    puts "What does #{num1} plus #{num2} equal?"
    puts "Solution #{@solution}" # here for now...
  end

  def good_response?
    if @answer == @solution
      true
    else
      false
    end
  end

end
