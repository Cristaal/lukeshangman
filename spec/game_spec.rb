require 'spec_helper'

describe Game do
  describe '#display_word' do
    it 'returns string of game word with blanks for unguessed letters' do
      game = Game.create
      "apple".chars.each do |letter|
        WordLetter.create( letter: letter, found: false)
      end
      expect(game.display_word).to eq("_ _ _ _ _ ")
    end
  end
end
