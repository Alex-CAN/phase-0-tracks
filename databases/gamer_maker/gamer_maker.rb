#program gamer_maker will produce a table of 100 random gamer(id, tags, high score, low score)
# Require ruby gems necessary for program
require 'sqlite3' #Allows ruby programs to interface with SQLite3 database engine.
require 'babbage' #Ruby mathematics. Supplements to/for standard library math.
require 'faker' #generates fake data

#email zauerbach@pivotal.io

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
def gamer_namer(favorite_pokemon, hipster_word, last_name)
        tag = favorite_pokemon + hipster_word + last_name
        tag.gsub!(/[e]/, '3')
        tag.gsub!(/[o]/, '0')
        tag.gsub!(/[a]/, '4')
end
# p gamer_namer(Faker::Pokemon.name, Faker::Hipster.word, Faker::Name.last_name )
# p Babbage::Array.maximum(test_scores)
# p Babbage::Array.minimum(test_scores)

#method makes gamers

def test_scores
  test_scores_arr = []
  3.times { test_scores_arr << Faker::Number.between(1, 10) }
  return test_scores_arr
end

def game_tag
  gamer_namer(Faker::Pokemon.name, Faker::Hipster.word, Faker::Name.last_name)
end

def make_gamer(db, gameTag, highScore, lowScore)
  db.execute("INSERT INTO gamers (gameTag, highScore, lowScore) VALUES (?, ?, ?)", [gameTag, highScore, lowScore])
end

100.times do 
  tag = game_tag
  p "creating gamer with name #{tag.inspect}"
  make_gamer(db, 
            tag, 
            Babbage::Array.maximum(test_scores), 
            Babbage::Array.minimum(test_scores))
end






#add test gamer to the table
# db.execute("INSERT INTO gamers (gameTag, highScore, lowScore) VALUES ('name', 100, 23)")

#explore ORM by retrieving data
# game = db.execute("SELECT * FROM gamers")
# puts game.class
# p game




