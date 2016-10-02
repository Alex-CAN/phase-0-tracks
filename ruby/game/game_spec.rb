require_relative 'game'

describe Game do
	let(:new_game) { Game.new("word") }

	it "takes a password string and returns a a string of dashes" do
		expect(new_game.encrypt).to eq "----"
	end

	it "takes a guess letter and replaces dashes in compare hash to letters respectively." do
		# new_game.compare_it = {"word"=>"----"}
		expect(new_game.decrypt("r")).to eq "--r-"
		# expect(new_game.compare_it).to eq {"word"=>"--r-"}
	end

	it "takes the compare_it hash and sees if the key and value are equal" do
		new_game.compare_it = {"word" => "word"}
	 	expect(new_game.guess_check).to eq "WINNER"
	 	new_game.compare_it = {"word" => "w--d"}
	 	expect(new_game.guess_check).to eq "LOSER"
	end


end


#player one inputs secretword to be encrypted
#player two inputs guess letter
#method takes letter and compares it with each of the letters in the secretword
#returns string with dashes and filled in dashes.
