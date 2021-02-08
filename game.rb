class Game
  #manages player turns
  #stores which turn we're on
  #announces scores
  #announce game over (a players live finishes)
  #initialize with 2 players
  attr_accessor :p1, :p2

  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
  end

  turn = 1

  while p1.lives == 0 || p2.lives == 0
    if (turn == 1)
      puts '----- NEW TURN -----'
      newTurn = Turn.new(p1)
      if (newTurn.correct?)
        puts "SAME RESULT"
      else
        puts "NEG RESULT"
        p1.lives -= 1
      end

      turn += 1
    elsif turn == 2
      '----- NEW TURN -----'
      newTurn = Turn.new(p2)
      if (newTurn.correct?)
        puts "SAME RESULT"
      else
        puts "NEG RESULT"
        p2.lives -= 1
      end

      turn -= 1
    end
  end

  if p1.lives == 0
    puts "Player #{p2} wins with a score of #{p2.lives}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  else p2.lives == 0
    puts "Player #{p1} wins with a score of #{p1.lives}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end


end