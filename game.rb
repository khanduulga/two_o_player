require "./player"
require "./turn"

class Game
  #manages player turns
  #stores which turn we're on
  #announces scores
  #announce game over (a players live finishes)
  #initialize with 2 players
  PLAYER_1 = Player.new(1)
  PLAYER_2 = Player.new(2)

  turn = 1

  while PLAYER_1.lives != 0 || PLAYER_2.lives != 0
    if (turn == 1)
      puts '----- NEW TURN -----'
      newTurn = Turn.new(PLAYER_1)
      if (newTurn.correct?)
        puts "SAME RESULT"
      else
        puts "NEG RESULT"
        PLAYER_1.lives -= 1
      end

      turn += 1
    elsif turn == 2
      '----- NEW TURN -----'
      newTurn = Turn.new(PLAYER_2)
      if (newTurn.correct?)
        puts "SAME RESULT"
      else
        puts "NEG RESULT"
        PLAYER_2.lives -= 1
      end

      turn -= 1
    end
  end

  if PLAYER_1.lives == 0
    puts "Player #{PLAYER_2} wins with a score of #{PLAYER_2.lives}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  else PLAYER_2.lives == 0
    puts "Player #{PLAYER_1} wins with a score of #{PLAYER_1.lives}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end


end