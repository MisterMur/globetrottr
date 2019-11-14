class AddTravelCostColumnToTrips < ActiveRecord::Migration[5.2]
  def change
    add_column :trips, :travel_cost, :integer
  end
end
