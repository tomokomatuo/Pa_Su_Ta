class AddColumnToComments < ActiveRecord::Migration[5.2]
  def up
    add_column :comments, :rate, :float
  end

  def down
    remove_column :comments, :rate, :float
  end
end
