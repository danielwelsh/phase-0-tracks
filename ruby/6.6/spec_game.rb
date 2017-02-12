require_relative 'game'


describe Game do 
	let(:game) {Game.new}

	# it "the game is initiated" do 
	# 	expect(game.new).to eq('')
	# end

	it "The inputed word is converted to ____ form" do
		expect(game.convert('hello')).to eq(["_", "_", "_", "_", "_"])
	end

	it "The word that is being checked is a match" do 
		round = Game.new
		round.convert('hello')

		expect(round.word_checker('hello')).to eq(true)
	end

	it "The letter that is being checked is a match in word that is being guessed" do 
		round = Game.new
		round.convert('hello')

		expect(round.char_checker('h')).to eq(["h", "_", "_", "_", "_"])
	end

	it "The letter/word that has been guessed has been added" do 
		round = Game.new 
		round.convert('hello')
		round.char_checker('h')

		expect(round.tracker('h')).to eq('Used')

	end

end
