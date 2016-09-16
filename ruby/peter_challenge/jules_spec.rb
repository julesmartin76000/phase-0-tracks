require_relative 'jules'

describe Game do
	let(:game) { Game.new }

	it "turns a string to an array" do
		expect(game.word_to_array("hello")).to eq ["h", "e", "l", "l", "o"]
	end

	it "check if there is enough underscore for an array" do 
		game.word_to_array("hello")
		game.underscore_array
		expect(game.answer).to eq ["-", "-", "-", "-", "-"]
	end 

	it "change the underscore index by the letter guessed" do 
		game.word_to_array("hello")
		game.underscore_array
		expect(game.check_if_correct("e")).to eq ["-", "e", "-", "-", "-"]
	end 

end 