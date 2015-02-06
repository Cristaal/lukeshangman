class Game < ActiveRecord::Base
  def display_word
    word = []
    WordLetter.all.each do |word_letter|
      if word_letter.found
        word.push(word_letter.letter + " ")
      else
        word.push("_ ")
      end
    end
    word.join
  end
end
