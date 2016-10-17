require 'sqlite3'
require 'faker'
require 'babbage'

db =SQLite3::Database.new("game_box.db")

# create_table_cmd = <<-SQL
#    CREATE TABLE IF NOT EXISTS gamers(
#     id INTEGER PRIMARY KEY,
#     name VARCHAR(255),
#     high_score INT
#   )
#  SQL

# db.execute(create_table_cmd)

# scores = [23,2,17,33,49]

# p Babbage::Array.maximum(scores)