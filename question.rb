
class Question
  #creates a random new question
  #no need to initialize with anything
  attr_reader :num1, :num2

  def initialize()
    @num1 = rand(19) + 1
    @num2 = rand(19) + 1
  end
  def to_s
    "What does #{num1} plus #{num2} equal?"
  end

  def ans
    num1 + num2
  end

end

