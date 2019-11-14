class DestinationsController < ApplicationController
  skip_before_action :authorized

  def index
    # byebug
    if params[:destination] != nil
      @country = Country.find_by(id: params[:destination][:country_id])
      @destinations = Destination.view_cities(params[:destination][:country_id]).sort_by{|d| d.state_city}
    elsif !!params[:country_id]
    end
  end

  def show
    # byebug
    if !!params[:destination]
      @destination = Destination.find(params[:destination][:id])
    else
      @destination = Destination.find(params[:id])
    end

    if !!params[:search]
      @search = params[:search]
    else
      @search = params[:activity][:type]
    end

    activity = Activity.get_spots(@search, @destination.id)
    Activity.create_by_api_connection(activity, @destination.id, @search)
    @activities = Activity.select_by_search_and_destination(@search, @destination.id).sort_by{|a| a.rating}.reverse
    # byebug
    # bars = Activity.get_spots("bars", @destination.id)
    # Activity.create_by_api_connection(bars, @destination.id, "bars")
    # @bars = Activity.select_by_search_and_destination("bars", @destination.id)
    #
    # museums = Activity.get_spots("museums", @destination.id)
    # Activity.create_by_api_connection(museums, @destination.id, "museums")
    # @museums = Activity.select_by_search_and_destination("museums", @destination.id)
  end


end
