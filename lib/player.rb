class Player
	
	HP = 100
#attr_accessor :hp
attr_reader :name, :hp

	def initialize(name)#, game = Game.new)
		@name=name
		@hp = HP
		#@current_game = game
	end
	
	def reduce_hp
		@hp -= 10
	end
	
	# def attack(player2)
	# 	@current_game.reduce_hp(player2)
	# end
end