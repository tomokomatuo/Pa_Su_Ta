class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :deleted_at, :string
    add_column :users, :datetime, :string
  end
end
