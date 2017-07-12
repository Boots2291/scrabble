require 'pry'
class Scrabble

  def score(word)
    letters = word.upcase.split("")

    total_score = 0
    letters_score = []
    letters.each do |letter|
      letters_score << point_values.values_at(letter)
    end
    # binding.pry
    letters_score.join.to_i
    # letters_score.map do |letter|
    #   binding.pry
    #   total_score += letter.join.to_i.reduce
    # end
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
