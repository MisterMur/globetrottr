class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :destination
  has_many :trip_activities
  has_many :activities, through: :trip_activities
  validate :date_range
  validates :destination_id, presence: true

  # validates :start_date, :destination_id, presence: true

  def date_range
    if self.start_date > self.end_date
      # errors.add(:start_date, "This date range is invalid")
      errors.add(:end_date, "End date must be after start date")
    end
  end

  def to_s
    # byebug
    self.destination.city + ", " + self.destination.country_name
  end

  def to_api
    "%20"+self.destination.city + "%20" + self.destination.country_name
  end

  def self.trip_names(user_id)
    self.all.select do |trip|
      trip.user_id == user_id
    end.map do |trip|
      trip.trip_name
    end.uniq
  end

  def trip_dates
    date_range = self.start_date..self.end_date
    date_range.map{|d| d.strftime("%m/%d/%Y")}.to_a
  end


end #end of Trip
