
class Player
	attr_accessor :name, :disc
	def initialize
	    @name = name
	    @disc = disc
	end 

	def get_player_info
		@name = gets.chomp
	end 

end 
