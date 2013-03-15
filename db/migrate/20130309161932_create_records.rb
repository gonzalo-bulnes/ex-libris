class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :location
      t.string :state
      t.string :number_of_books_estimate

      t.timestamps
    end
  end
end
