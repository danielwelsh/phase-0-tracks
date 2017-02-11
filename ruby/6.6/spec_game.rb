require_relative 'game'


describe Game do 
	let(:game) {Game.new}

	# it "the game is initiated" do 
	# 	expect(game.new).to eq('')
	# end

	it "The inputed word is converted to ____ form" do
		expect(game.convert('hello')).to eq("_____")
	end

	it "The word that is being checked is a match" do 
		round = Game.new
		round.convert('hello')

		expect(round.checker('hello')).to eq(true)
	end

end
