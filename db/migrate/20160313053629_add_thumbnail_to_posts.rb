class AddThumbnailToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :image_thumbnail_url, :string
  end
end
