class ChangeColumnNamesBoats < ActiveRecord::Migration[6.0]
  def change
    rename_column :boats, :number_of_berths, :sleeps
  end
end
