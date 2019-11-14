class Destination < ApplicationRecord
  belongs_to :state
  has_many :activities
  has_many :wishlists


  def self.view_cities(country_id) #this should return the cities of a country
    State.view_states(country_id).map do |state|
      state.destinations
    end.flatten
  end

  def country_name
    self.state.country.name
  end

  def country_id
    self.state.country_id
  end

  def state_name
    self.state.name
  end

  def to_s
    self.city + ", " + self.country_name
  end

  def city_state
    self.city + ", " + self.state_name
  end

  def state_city
    self.state_name + " - " + self.city
  end

  def to_api
    self.city + "%20" + self.country_name
  end



end #end of Destination class
