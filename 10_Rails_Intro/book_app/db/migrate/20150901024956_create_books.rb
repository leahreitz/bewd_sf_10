class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :year_published
      t.string :genre
      t.boolean :available

      t.timestamps null: false
    end
  end
end