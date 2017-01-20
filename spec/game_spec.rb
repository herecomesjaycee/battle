require 'game'

describe Game do
#let(:game) {subject.new(player_one, player_two)}
let(:game) {Game.new(player_one, player_twp)}
let(:player_one) {double :player}
let(:player_two) {double :player}

before(:each) do                                                            
@game= game.clone                                
end               
	describe '#attack' do
		it 'reduce the opponent HP by 10' do
		
		expect(player_two).to receive(:reduce_hp)
		@game.attack(player_two)
	#	allow(player_two).to receive(:hp).and_return(90)
	# 	expect(game.reduce_hp(player_two)).to change {player_two.hp}.by(-10)
	 	end
	 end
	 
	 describe '#switch' do
	 	it 'changes the current player to player_two' do
	 		expect{game.switch}.to change{game.current_player}.to player_two
	 	end
	 	
	 	it 'changes the current player back to player_one' do
	 		game.switch
	 		expect{game.switch}.to change{game.current_player}.to player_one
	 	end
	 end

end