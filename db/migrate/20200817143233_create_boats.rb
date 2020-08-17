class CreateBoats < ActiveRecord::Migration[6.0]
  def change
    create_table :boats do |t|
      t.string :name
      t.string :make
      t.float :length
      t.string :location_country
      t.string :location_marina
      t.integer :daily_price
      t.integer :number_of_berths
      t.integer :year_built
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
