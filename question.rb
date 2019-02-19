class Question
  def initialize
    @question = "#{generate_question}"
    @answer = gets.chomp
  end

  def generate_question
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
    num1 = numbers.sample
    num2 = numbers.sample
    solution = num1 + num2
    puts "What does #{num1} plus #{num2} equal?"
    @answer
  end

end
