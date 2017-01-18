require 'game'

describe Game do
subject(:game) {described_class.new}
let(:player_two) {double :player, hp: 100}

	describe '#attack' do
		it 'reduce the opponent HP by 10' do
		game.reduce_hp(player_two)
		expect(player_two.hp).to eq 90
	#	allow(player_two).to receive(:hp).and_return(90)
	# 	expect(game.reduce_hp(player_two)).to change {player_two.hp}.by(-10)
	 	end
	 end
end