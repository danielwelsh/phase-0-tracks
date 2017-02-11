require_relative 'game'


describe Game do 
	let(:game) {Game.new}

	it "the game is initiated" do 
		expect(game.initiate).to eq('')
	end

	it "The inputed word is converted to ____ form" do
		expect(game.convert_word('hello')).to eq("_____")
	end

end
