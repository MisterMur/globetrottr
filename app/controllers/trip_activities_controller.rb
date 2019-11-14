class TripActivitiesController < ApplicationController
  before_action :set_trip_activity, only: [:show, :edit, :update, :destroy]

  # GET /trip_activities
  # GET /trip_activities.json
  def index
    @trip_activities = TripActivity.all
  end

  # GET /trip_activities/1
  # GET /trip_activities/1.json
  def show
  end

  # GET /trip_activities/new
  def new
    @trip_activity = TripActivity.new
  end

  # GET /trip_activities/1/edit
  def edit
  end

  # POST /trip_activities
  # POST /trip_activities.json
  def create
    @trip_activity = TripActivity.new(trip_activity_params)

    respond_to do |format|
      if @trip_activity.save
        format.html { redirect_to @trip_activity, notice: 'Trip activity was successfully created.' }
        format.json { render :show, status: :created, location: @trip_activity }
      else
        format.html { render :new }
        format.json { render json: @trip_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trip_activities/1
  # PATCH/PUT /trip_activities/1.json
  def update
    respond_to do |format|
      if @trip_activity.update(trip_activity_params)
        format.html { redirect_to @trip_activity, notice: 'Trip activity was successfully updated.' }
        format.json { render :show, status: :ok, location: @trip_activity }
      else
        format.html { render :edit }
        format.json { render json: @trip_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trip_activities/1
  # DELETE /trip_activities/1.json
  def destroy
    @trip_activity.destroy
    respond_to do |format|
      format.html { redirect_to trip_activities_url, notice: 'Trip activity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip_activity
      @trip_activity = TripActivity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trip_activity_params
      params.fetch(:trip_activity, {})
    end
end
