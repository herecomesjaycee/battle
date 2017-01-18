require 'player'

describe Player do
subject(:player) {described_class.new("Bob")}
subject(:player2) {described_class.new("Mark")}

	
	describe '#new' do
		it 'should return name' do
			new_player = Player.new("Bob")
			expect(new_player.name).to eq "Bob"
		end
	end

	describe '#attack' do
	 	it 'should reduce opponent HP by 10' do
	 		expect(player.attack(player2)).to eq 90
	 	end
	 end
end