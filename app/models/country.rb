class Country < ApplicationRecord
  has_many :states
  has_many :trips
  has_many :users, through: :trips

  def activity_choices
    ["Restaurants", "Bars", "Museums", "Historic Sites", "Beaches", "Things to do", "Shopping"].sort
  end

  def self.find_by_destination(destination_id)
    # byebug
    self.find(Destination.find_by(destination_id).country_id)
  end

end #end of Country class
