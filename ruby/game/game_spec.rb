require_relative 'game'

describe Game do
	let(:new_game) { Game.new("word") }

	it "takes a password string and returns a a string of dashes" do
		expect(new_game.encrypt).to eq "----"
	end

	it "takes a guess letter and string of dashes. returns string with dashes replaced by letter respectively. " do
		expect(new_game.decrypt(["r"])).to eq "--r-"
	end

	it "checks to see if password string includes all letters in player 2's final guess array" do
		expect(new_game.guess_check(["w","r","d", "o"])).to eq "WINNER"
		expect(new_game.guess_check(["w","i","n","d"])).to eq "LOSER"
	end


end


#player one inputs secretword to be encrypted
#player two inputs guess letter
#method takes letter and compares it with each of the letters in the secretword
#returns string with dashes and filled in dashes.
