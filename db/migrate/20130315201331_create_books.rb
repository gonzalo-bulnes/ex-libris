class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :author
      t.string :editor
      t.text :title
      t.string :publisher
      t.string :year
      t.string :volume
      t.integer :number
      t.string :series
      t.text :address
      t.string :edition
      t.string :month
      t.text :note
      t.string :key
      t.integer :isbn

      t.timestamps
    end
  end
end
