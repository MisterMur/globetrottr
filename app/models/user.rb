class User < ApplicationRecord
  has_secure_password
  has_many :trips
  has_many :destinations, through: :trips
  has_many :countries
  has_many :wishlists

  validates :first_name, :last_name, :birthdate, :email, :username, :password, presence: true
  validates :email, :username, uniqueness: true
  # validates :password, length: { in: 4..12 }

  def view_destinations
    self.destinations.map{|destination| destination.to_s}
  end

  def to_s
    self.first_name + " " + self.last_name
  end

  def view_trip_names
    self.trips.map do |trip|
      trip.trip_name
    end.uniq.sort
  end

  def select_trips(trip_name)
    self.trips.select do |trip|
      trip.trip_name == trip_name
    end
  end

end
