require 'player'

describe Player do
	
	describe '#new' do
		it 'should return name' do
			new_player = Player.new("Bob")
			expect(new_player.name).to eq "Bob"
		end
	end
end