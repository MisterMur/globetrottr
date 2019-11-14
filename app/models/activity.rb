class Activity < ApplicationRecord
  belongs_to :destination
  has_many :trip_activities
  has_many :trips, through: :trip_activities
  # before_action :connect_google_api


  def location
    #check trip association --> there's no relationship yet
    self.destination.to_s
  end

  def self.get_photo_url(spot)
    # byebug
    #maxwidth in url changes photo size
    if spot.photos.first == nil
      "Photo Unavailable"
    else
      ref = spot.photos.first.photo_reference
      "https://maps.googleapis.com/maps/api/place/photo?maxwidth=200&photoreference=#{ref}&key=AIzaSyBcF7WmTnqaJVXqW1u4Z2rhHEjOeiaNRtg"
    end
  end


  def self.get_spots(type, id)
    location = Destination.find_by(id: id).to_s
    @client = GooglePlaces::Client.new("AIzaSyBjwhfCwbOrpNN0VU5sc7QspaTmDiBPot8")
    @client.spots_by_query("#{type} near #{location}")
  end

  def self.create_by_api_connection(array, id, search)
    array.each do |spot|
      if self.find_by(name: spot.name) == nil
        self.create(name: spot.name, address: spot.formatted_address, rating: spot.rating, price_level: spot.price_level, photo_url: self.get_photo_url(spot), destination_id: id, search: search)
      else
        self.find_by(name: spot.name)
      end
    end
  end

  def self.select_by_search_and_destination(search, id)
    Activity.all.select do |activity|
      activity.search == search && activity.destination_id == id.to_i
    end
  end

  def format_address_for_search
    self.address.split(" ").join("%20")
  end


end #end of Activity class
