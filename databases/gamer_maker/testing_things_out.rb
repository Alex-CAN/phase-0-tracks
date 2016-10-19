require 'faker'
require 'babbage'

def gamer_namer(favorite_pokemon, hipster_word, last_name)
        tag = favorite_pokemon + hipster_word + last_name
        tag.gsub!(/[e]/, '3')
        tag.gsub!(/[o]/, '0')
        tag.gsub!(/[a]/, '4')
end

def test_scores
  test_scores_arr = []
  3.times { test_scores_arr << Faker::Number.between(1, 10) }
  return test_scores_arr
end



10.times do
  p "High score is #{Babbage::Array.maximum(test_scores)}"
  p "Low score is #{Babbage::Array.minimum(test_scores)}"
end
