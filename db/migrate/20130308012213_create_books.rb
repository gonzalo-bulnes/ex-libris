class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :author
      t.string :editor
      t.string :title
      t.string :publisher
      t.string :year
      t.string :volume
      t.integer :number
      t.string :series
      t.string :address
      t.string :edition
      t.string :month
      t.string :note
      t.string :key
      t.integer :isbn

      t.timestamps
    end
  end
end
