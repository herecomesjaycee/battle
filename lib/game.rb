require 'singleton'

class Game

    include Singleton

attr_reader :player_one, :player_two, :current_player, :current_opponent

def initialize(player_one,player_two)
	@player_one = player_one
	@player_two = player_two
	@current_player = player_one
	@current_opponent = player_two
end

def attack(player)
	player.reduce_hp
end

def switch
    @current_player == player_one ? assign_to_player_two : assign_to_player_one   
end

def over?
@player_one.hp == 0 || @player_two.hp == 0 
end

def display_loser
@current_player = player_two if player_two.hp == 0
end

private 

def assign_to_player_two
        @current_player = player_two
        @current_opponent = player_one
end

def assign_to_player_one
        @current_player = player_one
        @current_opponent = player_two
end


end
