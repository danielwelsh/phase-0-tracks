require_relative 'game'


describe Game do 
	let(:game) {Game.new}

	it "the game is initiated" do 
		expect(game.initiate).to eq('')
	end


end
