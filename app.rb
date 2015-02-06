require 'bundler/setup'
Bundler.require :default
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get "/" do
  erb :index
end

post '/games' do
  WordLetter.all.each do |word_letter|
    word_letter.destroy
  end
  Game.all.each do |game|
    game.destroy
  end
  new_game = Game.create( hangman_state: 0 )
  game_word = params.fetch("word")
  game_word.chars.each do |letter|
    WordLetter.create( letter: letter, found: false)
  end
  redirect '/games/' + new_game.id.to_s
end

get '/games/:id' do
  @game = Game.find(params.fetch('id'))
  @display_word = WordLetter.display_word
  erb :game
end



patch '/games/:id' do
  letter = params.fetch("letter")
  WordLetter.check_letter(letter)
  redirect '/games/' + params.fetch("id")
end
