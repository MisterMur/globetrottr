class CreateTripActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :trip_activities do |t|
      t.belongs_to :trip, foreign_key: true
      t.belongs_to :activity, foreign_key: true

      t.timestamps
    end
  end
end
