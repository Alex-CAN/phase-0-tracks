#RSPEC
# 'describe' block for each group of text
# 'it' block for each individual test
# expect (<CODE>).to eq <RESULT>
require_relative 'game'

describe Guessing do
	let(:game) {Guessing.new(["w","o","r","d"])}
	let(:guess) {"o"}
 it "encrypts word to all dashes" do 
 	expect(game.your_word(guess)). to eq "-o--"
 end

 it "determins if you won or lost" do
 	final = ["w", "r", "f", "d"]
 	expect(game.guess_check(final)). to eq "SORRY YOU LOSE!"
 end

 # it "gives update on guess status" do
 # 	expect(game.word_update("r")). to eq "--r-"
 # end

	
end