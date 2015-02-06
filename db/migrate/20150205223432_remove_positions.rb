class RemovePositions < ActiveRecord::Migration
  def change
    drop_table :positions
    add_column :word_letters, :found, :boolean
  end
end
