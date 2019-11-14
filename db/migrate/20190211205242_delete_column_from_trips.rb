class DeleteColumnFromTrips < ActiveRecord::Migration[5.2]
  def change
    remove_column :trips, :travel_time
    remove_column :trips, :travel_cost
  end
end
