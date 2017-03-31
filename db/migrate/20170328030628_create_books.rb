class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.integer :pages
      t.integer :author_id
      t.string :amazon_url
      t.string :picture_url
      t.timestamps
    end
  end
end
