class CreateWordLetters < ActiveRecord::Migration
  def change
    create_table :word_letters do |t|
      t.string :letter
      t.timestamps
    end
  end
end
