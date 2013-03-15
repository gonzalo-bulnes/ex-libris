class AddRecordIdToBooks < ActiveRecord::Migration
  def change
    add_column :books, :record_id, :string
  end
end
