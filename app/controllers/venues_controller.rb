class VenuesController < ApplicationController
  before_action :authenticate_user!
  def index
    @venues = Venue.near(params[:address])
    @markers = @venues.map do |venue|
      {
        lng: venue.longitude,
        lat: venue.latitude,
        infoWindow: { content: render_to_string(partial: "/venues/map_box", locals: { venue: venue }) }
      }
    end
  end

  def personal_index
    @venues = Venue.where(user: current_user)
  end

  def show
    @venue = Venue.find(params[:id])
  end

  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.new(venue_params)
    @venue.user = current_user
    if @venue.save
      redirect_to venue_path(@venue)
    else
      render :new
    end
  end

  def edit
    @venue = Venue.find(params[:id])
  end

  def update
    @venue = Venue.find(params[:id])
    @venue.update(venue_params)
    redirect_to venue_path(@venue)
  end

  def destroy
    @venue = Venue.find(params[:id])
    @venue.destroy
    redirect_to root_path
  end

  private

  def venue_params
    params.require(:venue).permit(:name, :address, :category, :price)
  end

  def set_user
    @user = User.find(params[:user_id])
  end

end
