class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :subject
      t.string :author
      t.text :description
      t.string :publisher
      t.string :isbn
      t.integer :year
      t.decimal :price, precision: 7, scale: 2

      t.timestamps
    end
  end
end
