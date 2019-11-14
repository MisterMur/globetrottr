class State < ApplicationRecord
  has_many :destinations
  belongs_to :country

  def self.view_states(country_id) #this should return the states of a country
    self.all.select do |state|
      state.country_id == country_id.to_i
    end
  end

end #end of Country class
