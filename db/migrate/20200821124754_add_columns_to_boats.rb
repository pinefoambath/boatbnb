class AddColumnsToBoats < ActiveRecord::Migration[6.0]
  def change
    add_column :boats, :image_interior_a, :string
    add_column :boats, :image_interior_b, :string
    add_column :boats, :image_interior_c, :string
    add_column :boats, :image_interior_d, :string
  end
end
