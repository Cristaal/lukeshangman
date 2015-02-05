class CreateLetters < ActiveRecord::Migration
  def change
    create_table :letters do |t|
      t.string :letter
      t.timestamps
    end
  end
end
