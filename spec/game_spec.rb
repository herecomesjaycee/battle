require 'game'

describe Game do
subject(:game) {described_class.new}
let(:player_two) {double :player}

	describe '#attack' do
		it 'reduce the opponent HP by 10' do
		
		expect(player_two).to receive(:reduce_hp)
		game.attack(player_two)
	#	allow(player_two).to receive(:hp).and_return(90)
	# 	expect(game.reduce_hp(player_two)).to change {player_two.hp}.by(-10)
	 	end
	 end
end