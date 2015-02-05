class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :hangman_state
      t.timestamps
    end
  end
end
