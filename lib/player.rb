class Player
attr_accessor :hp
attr_reader :name

	def initialize(name, game = Game.new)
		@name=name
		@hp = 100
		@current_game = game
	end

	def attack(player2)
		@current_game.reduce_hp(player2)
	end
end