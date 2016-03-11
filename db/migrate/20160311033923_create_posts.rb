class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :subtitle
      t.string :image_url
      t.date :date_posted
      t.date :date_modified
      t.string :post_body
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
