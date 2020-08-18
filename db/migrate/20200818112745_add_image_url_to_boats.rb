class AddImageUrlToBoats < ActiveRecord::Migration[6.0]
  def change
    add_column :boats, :image_url, :string
    add_column :boats, :type, :string
  end
end
