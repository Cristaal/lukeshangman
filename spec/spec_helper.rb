ENV['RACK_ENV'] = 'test'

require 'bundler/setup'
Bundler.require :default, :test
Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each { |file| require file }

RSpec.configure do |config|
  config.after :each do
    Letter.all.each do |letter|
      letter.destroy
    end
    UsedLetter.all.each do |used_letter|
      used_letter.destroy
    end
  end
end
