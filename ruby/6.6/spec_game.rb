require_relative 'game'


describe Game do 
	let(:game) {Game.new}

	it "the game is initiated" do 
		expect(game.initiate).to eq('')
	end

	it "The inputed word is converted to ____ form" do
		expect(game.convert_word('hello')).to eq("_____")
	end

	it "The word that is being checked is a match"
		expect(game.word_checker('hello').to eq(true))

end
