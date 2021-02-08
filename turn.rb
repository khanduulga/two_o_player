
class Turn
  #creates a new turn every round
  #asks a question from current player
  #announces if answer is correct
  #initialize with player and question
  attr_reader :player_num
  def initialize(player)
    @player_num = player.num
  end

  def correct?(bool) 
    if bool
      "Player #{player_num}: YES! You are correct."
    else
      "Player #{player_num}: Seriously! No!"
    end
  end
  
end

