# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

##########################################################
#          USE THIS TO RE-SEED A NEW DATABASE            #
##########################################################

CS.countries.each do |country_code, country_name|
  country = Country.create(name: country_name)
  CS.states(country_code).each do |state_code, state_name|
    state = State.create(name: state_name, country_id: country.id)
    CS.cities(state_code, country_code).each do |city|
      Destination.create(city: city, state_id: state.id)
    end
  end
end

########### this is to seed the images table

Image.create(url: "http://www.experttravelguide.net/wp-content/uploads/2017/10/landing_bg.jpg")
Image.create(url: "http://www.ecmpublishing.com/contentfiles/uploads/images/image001.jpg")
Image.create(url: "http://travel-2-go.com/images/beachPier.jpg")
Image.create(url: "https://res.cloudinary.com/jpress/image/fetch/c_fill,f_auto,h_1133,q_auto:eco,w_1700/https://inews.co.uk/wp-content/uploads/2018/11/shutterstock_186150560.jpg")
Image.create(url: "http://www.applevacations.com/appleweb/images/sheratonKona212219.jpg")
Image.create(url: "http://www.gosunrisetravel.com/img/europe-travel-packages.jpg")


# Destination.view_countries.each do |country|
#   Country.create(name: country)
# end

# Destination.all.each do |destination|
#   # byebug
#   destination.update(country_id: Country.find_by(name: destination.country).id)
# end


# @client = GooglePlaces::Client.new("AIzaSyBjwhfCwbOrpNN0VU5sc7QspaTmDiBPot8")
# byebug

# User.create(first_name: "linya", last_name: "hu", birthdate: Date.parse('1994-06-25'), email: "linya.hu
# @flatironschool.com", username: "lh62594", password: "1234")
# User.create(first_name: "brian", last_name: "murillo", birthdate: Date.parse('1993-08-18'), email: "brian.murillo
# @flatironschool.com", username: "mistermur", password: "5678")

# Trip.create(user_id: 2, destination_id: 256, mode: "flight", start_date: Date.parse('2019-07-08'), end_date: Date.parse('2019-07-25'))
#<GooglePlaces::Spot:0x007fcbdf9b2898
# @reference="ChIJn821CH6x2YgRzHH9zkGHMoQ",
# @place_id="ChIJn821CH6x2YgRzHH9zkGHMoQ",
# @vicinity=nil,
# @lat=25.8451434,
# @lng=-80.18827809999999,
# @viewport={"northeast"=>{"lat"=>25.84649692989272, "lng"=>-80.18681767010727}, "southwest"=>{"lat"=>25.84379727010728, "lng"=>-80.18951732989271}},
# @name="IRONSIDE KITCHEN PIZZA & COFFEE CO",
# @icon="https://maps.gstatic.com/mapfiles/place_api/icons/restaurant-71.png",
# @types=["cafe", "store", "restaurant", "point_of_interest", "food", "establishment"],
# @id="ff99a5b971e195646401418fc00d427dc22c113b",
# @formatted_phone_number=nil,
# @international_phone_number=nil,
# @formatted_address="7580 NE 4th Ct, Miami, FL 33138, USA",
# @address_components=nil,
# @street_number=nil,
# @street=nil,
# @city=nil,
# @region=nil,
# @postal_code=nil,
# @country=nil,
# @rating=4.5,
# @price_level=2,
# @opening_hours={"open_now"=>true},
# @url=nil,
# @cid=0,
# @website=nil,
# @zagat_reviewed=nil,
# @zagat_selected=nil,
# @aspects=[],
# @review_summary=nil,


# @photos=[#<GooglePlaces::Photo:0x007fcbdf9b2438
# @width=4032,
# @height=3024,
# @photo_reference="CmRaAAAAiKiK29G1SXhMFCtCbEie5FNnDd-jP4sFCnjsBo5sJYWQTYAqufUQX4wGk-XL1lGDzdQrxlSUHP9Hi93IJpxN1iWCiCT6hAxc3E6aP9kzBtnEkiksVd9xWQrRLNit7dQnEhCq8ji36YQPkpTOYD9QvXLAGhT69NwX8tGnpX8daDk2WVY2Sz6QJQ",
# https://maps.googleapis.com/maps/api/place/photo?photoreference=CmRaAAAAiKiK29G1SXhMFCtCbEie5FNnDd-jP4sFCnjsBo5sJYWQTYAqufUQX4wGk-XL1lGDzdQrxlSUHP9Hi93IJpxN1iWCiCT6hAxc3E6aP9kzBtnEkiksVd9xWQrRLNit7dQnEhCq8ji36YQPkpTOYD9QvXLAGhT69NwX8tGnpX8daDk2WVY2Sz6QJQ&key=AIzaSyBjwhfCwbOrpNN0VU5sc7QspaTmDiBPot8
# https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=CmRaAAAAiKiK29G1SXhMFCtCbEie5FNnDd-jP4sFCnjsBo5sJYWQTYAqufUQX4wGk-XL1lGDzdQrxlSUHP9Hi93IJpxN1iWCiCT6hAxc3E6aP9kzBtnEkiksVd9xWQrRLNit7dQnEhCq8ji36YQPkpTOYD9QvXLAGhT69NwX8tGnpX8daDk2WVY2Sz6QJQ&key=AIzaSyBcF7WmTnqaJVXqW1u4Z2rhHEjOeiaNRtg
#
# # @html_attributions=["<a href=\"https://maps.google.com/maps/contrib/109059663892221822810/photos\">Eric Sadoun</a>"],
# # @api_key="AIzaSyBjwhfCwbOrpNN0VU5sc7QspaTmDiBPot8">],
# @reviews=[],
# @nextpagetoken=nil,
# @events=[],
# @utc_offset=nil,
# @permanently_closed=nil>

# @client.spots_by_query('historic sites near 11 broadway ny', :types => ['point_of_interest'], :exclude => ['food', 'restaurant', 'bar']).first.rating
