class AddDateColumnToTripActivities < ActiveRecord::Migration[5.2]
  def change
    add_column :trip_activities, :date, :date
  end
end
