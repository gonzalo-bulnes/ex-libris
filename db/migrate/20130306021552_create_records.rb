class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :location
      t.string :picture
      t.string :state

      t.timestamps
    end
  end
end
