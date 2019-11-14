class AddColumnToTrips < ActiveRecord::Migration[5.2]
  def change
    add_column :trips, :trip_name, :string
  end
end
