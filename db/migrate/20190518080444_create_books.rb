class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.text :description
      t.string :publisher
      t.string :isbn
      t.string :ed
      t.integer :year
      t.decimal :price

      t.timestamps
    end
  end
end
