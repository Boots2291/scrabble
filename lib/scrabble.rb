require 'pry'
class Scrabble

  def score(word)
    if word == nil
      total_score = 0
    elsif word == ""
      total_score = 0
    else
      letters = word.upcase.split("")
      total_score = 0
      letters.each do |letter|
        total_score += point_values[letter]
      end
    end
    total_score
  end

  def score_with_multipliers(word, letter_multipliers, word_multiplier = 1)
    letters = word.upcase.split("")
    temp_scores = []
    if word.length > 6
      total_score = 10
    else
      total_score = 0
    end
    letters.each do |letter|
    temp_scores << point_values[letter]
    end
    letter_multipliers.map.with_index do |number, index|
      total_score += number * temp_scores[index]
    end
    total_score * word_multiplier
  end

  def point_values
    {
      "A"=>1, "B"=>3, "C"=>3, "D"=>2,
      "E"=>1, "F"=>4, "G"=>2, "H"=>4,
      "I"=>1, "J"=>8, "K"=>5, "L"=>1,
      "M"=>3, "N"=>1, "O"=>1, "P"=>3,
      "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
      "U"=>1, "V"=>4, "W"=>4, "X"=>8,
      "Y"=>4, "Z"=>10
    }
  end
end
