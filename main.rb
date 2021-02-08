require "./game"
require "./turn"
require "./question"
require "./player"

## players
PLAYER_1 = Player.new(1, 3)
PLAYER_2 = Player.new(2, 3)

## game start
game = Game.new(PLAYER_1, PLAYER_2)

# puts game
# ## TURN 1
# ## question
# ## check if correct
# ## update lives and print status
# ## TURN 2
# ## question
# ## check if correct
# ## update lives and print status
# ## TURN (last)
# ## question
# ## check incorrect
# ## update life to 0 and print winner

# ## game over status with goodbye




# ## Player 1 starts
i = 0
current_player = i % 2

while PLAYER_1.lives != 0 && PLAYER_2.lives != 0 do
  if current_player == 0
    #CHECK FOR FIRST ROUND
    if i != 0
      puts '----- NEW TURN -----'
    end


    # CREATE NEW TURN
    new_turn = Turn.new(PLAYER_1)

    #CREATE NEW QUESTION
    puts new_question = Question.new()

    #GET ANSWER FROM PLAYER
    player_ans = gets.chomp

    #CHECK ANSWER
    if new_question.ans != player_ans.to_i
      PLAYER_1.lives -= 1
    end

    #SEND RESPONSE TO ANSWER 
    puts new_turn.correct?(new_question.ans == player_ans.to_i)

    #SHOW CURRENT STATE OF GAME
    puts game

    #UPDATE TURN FOR NEXT PLAYER
    i += 1
    current_player = i % 2
  else
    puts '----- NEW TURN -----'
    new_turn = Turn.new(PLAYER_2)
    puts new_question = Question.new()
    player_ans = gets.chomp

    if new_question.ans != player_ans.to_i
      PLAYER_2.lives -= 1
    end

    puts new_turn.correct?(new_question.ans == player_ans.to_i)
    puts game
    i += 1
    current_player = i % 2
  end

end


#END MESSAGE
puts "----- GAME OVER -----"
puts "Good bye!"

