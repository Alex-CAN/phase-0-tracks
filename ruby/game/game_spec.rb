require_relative 'game'

describe Game do
	let(:new_game) {Game.new}
	it "takes a password string and returns a a string of dashes" do
		expect (new_game.encrypt("word")).to eq "----"
	end
end