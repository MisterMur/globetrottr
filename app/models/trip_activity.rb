class TripActivity < ApplicationRecord
  belongs_to :trip
  belongs_to :activity

  def self.select_trip_activity(trip_id:, activity_id:)
    self.all.find do |ta|
      ta.trip_id == trip_id.to_i && ta.activity_id == activity_id.to_i
    end
  end

end
