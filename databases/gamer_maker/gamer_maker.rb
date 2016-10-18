#program gamer_maker will produce a table of 100 random gamer(id, tags, high score, low score)
# Require ruby gems necessary for program
require 'sqlite3' #Allows ruby programs to interface with SQLite3 database engine.
require 'babbage' #Ruby mathematics. Supplements to/for standard library math.
require 'faker' #generates fake data

#set var 'db' to eq a Sqlite3 database.
db = SQLite3::Database.new("gameBox.db")
db.results_as_hash = true
#create table 'gamers' (as long as it doesnt already exist)
create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS gamers(
	id INTEGER PRIMARY KEY,
	gameTag VARCHAR(255),
	highScore INT,
	lowScore INT
	)
SQL
db.execute(create_table_cmd)

#method makes a gamer tag
def name_the_developer(favorite_pokemon, hipster_word, last_name)
        favorite_pokemon = Faker::Pokemon.favorite_pokemon
        hipster_word = Faker::Hipster.word.hipster_word
        last_name = Faker::Name.last_name

        tag = favorite_pokemon + hipster_word + favorite_color
        tag.gsub!(/[e]/, '3')
        tag.gsub!(/[o]/, '0')
        tag.gsub!(/[a]/, '4')
end
#method makes gamers
def make_gamer(db,gameTag, highScore. lowScore)
	db.execute("INSERT INTO gamers (gameTag, highScore, lowScore) VALUES (?, ?, ?)", [gameTag, highScore, lowScore])
end


100.times do 
	make_gamer(db, )







#add test gamer to the table
# db.execute("INSERT INTO gamers (gameTag, highScore, lowScore) VALUES ('name', 100, 23)")

#explore ORM by retrieving data
# game = db.execute("SELECT * FROM gamers")
# puts game.class
# p game




