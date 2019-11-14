class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :destination, foreign_key: true
      t.string :mode
      t.datetime :travel_time
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
