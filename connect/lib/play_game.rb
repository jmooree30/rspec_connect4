require_relative 'board'
require_relative 'player'
puts "                      Welcome to my version of connect 4"
puts "          Pick a number to drop the disc into the corresponding slot"
puts "The first player to get 4 discs in a row horizontally, vertically, or diagonally wins! \n\n"

player1 = Player.new
puts "Player one enter your name."
player1.get_player_info
player1.disc = "x"
puts "#{player1.name} has been assigned 'x' as a disc."
player2 = Player.new
puts "\nPlayer two enter your name."
player2.get_player_info
player2.disc = "o"
puts "#{player2.name} has been assigned 'o' as a disc.\n"

board = Board.new 
board.display
loop do 
	puts "\n #{player1.name} drop a disc into a slot 0-6."
	board.drop_disc(gets.chomp.to_i,player1.disc)
	break if board.win_vertical == true or board.win_horizontal == true or board.win_diagnal_lr == true or board.win_diagnal_rl == true 
	puts "\n #{player2.name} drop a disc into a slot 0-6"
	board.drop_disc(gets.chomp.to_i,player2.disc)
    break if board.win_vertical == true or board.win_horizontal == true or board.win_diagnal_lr == true or board.win_diagnal_rl == true
end 