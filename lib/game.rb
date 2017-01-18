class Game

attr_reader :player_one, :player_two, :current_player


def initialize(player_one,player_two)
	@player_one = player_one
	@player_two = player_two
	@current_player = player_one
end

def attack(player)
	player.reduce_hp
end

def switch
 if @current_player == @player_one 
    @current_player = @player_two
end
 if @current_player == @player_two 
 @current_player = @player_one
end
end

end
