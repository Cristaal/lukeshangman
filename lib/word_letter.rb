class WordLetter < ActiveRecord::Base
  def self.check_letter (user_letter)
    WordLetter.all.each do |word_letter|
      if word_letter.letter == user_letter
        word_letter.update(found: true)
      end
    end
  end
  
  def self.display_word
    word = []
    WordLetter.all.order("id ASC").each do |word_letter|
      if word_letter.found
        word.push(word_letter.letter)
      else
        word.push("_")
      end
      word.push(" ")
    end
    word.join
  end
end
