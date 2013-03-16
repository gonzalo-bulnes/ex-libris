class ChangeIsbnTypeInBooks < ActiveRecord::Migration
  def up
    remove_column :books, :isbn # integer
    add_column :books, :isbn, :integer, limit: 8
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
