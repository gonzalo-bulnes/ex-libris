class ChangeRecordIdTypeInBooks < ActiveRecord::Migration
  def up
    remove_column :books, :record_id # string
    add_column :books, :record_id, :integer
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
