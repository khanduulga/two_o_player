class Game
  #manages player turns
  #stores which turn we're on
  #announces scores
  #announce game over (a players live finishes)
  #initialize with 2 players
  attr_reader :player1, :player2

  def initialize(p1, p2)
    @player1 = p1
    @player2 = p2
  end


  def to_s
    if player1.lives == 0
      return "Player 2 wins with a score of #{player2.lives}/3"
    end

    if player2.lives == 0
      return "Player 1 wins with a score of #{player1.lives}/3"
    end

    return "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
  end


end