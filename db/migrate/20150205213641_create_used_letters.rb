class CreateUsedLetters < ActiveRecord::Migration
  def change
    create_table :used_letters do |t|
      t.string :letter
      t.timestamps
    end
  end
end
