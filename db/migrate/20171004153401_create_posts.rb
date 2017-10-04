class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.text :title
      t.string :author
      t.string :theme
      t.text :body
      t.text :picture

      t.timestamps
    end
  end
end
