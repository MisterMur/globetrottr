class ChangeDateColumnInTripActivity < ActiveRecord::Migration[5.2]
  def change
    change_column :trip_activities, :date, :string
  end
end
