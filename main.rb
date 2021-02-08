require "./game"
require "./turn"
require "./question"
require "./player"


# puts answer = gets.chomp


player1 = Player.new(1)
player2 = Player.new(2)

game = Game.new(player1, player2)