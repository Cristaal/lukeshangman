require './lib/letter.rb'

('a'..'z').each do |letter|
  Letter.create( letter: letter)
end
