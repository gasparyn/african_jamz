class AddImageUrlToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :image_url, :string
    add_column :albums, :description, :text
  end
end
