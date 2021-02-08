
class Question
  #creates a random new question
  #no need to initialize with anything
  NUM1 = rand(19) + 1
  NUM2 = rand(19) + 1

  def to_s
    "What does #{NUM1} plus #{NUM2} equal?"
  end

  def ans
    NUM1 + NUM2
  end

end



# q1 = Question.new()

# puts q1
# puts q1.ans