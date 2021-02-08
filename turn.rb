require "./question"

class Turn
  #creates a new turn every round
  #asks a question from current player
  #announces if answer is correct
  #initialize with player and question
  attr_reader :player
  QUESTION = Question.new()
  ANSWER = QUESTION.ans

  def initialize(player)
    @player = player
  end

  puts QUESTION
  ans = gets.chomp
  
  if (ans == ANSWER)
    puts "#{player}: YES! You are correct."
  else
    puts "#{player}: Seriously? No!"
  end

  def correct? 
    ans == ANSWER
  end
  
end