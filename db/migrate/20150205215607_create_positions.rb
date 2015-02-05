class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.integer :letter_id
      t.timestamps
    end
  end
end
