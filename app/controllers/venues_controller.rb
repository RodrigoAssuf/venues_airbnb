class VenuesController < ApplicationController
  before_action :set_user, only: [:show, :new, :create, :edit, :update, :destroy]
  def index
    @venues = Venue.all
  end

  def show
    @venue = Venue.find(params[:id])
  end

  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.new(venue_params)
    @venue.user = @user
    @venue.save
    redirect_to user_venue_path(@user, @venue)
  end

  def edit
    @venue = Venue.find(params[:id])
  end

  def update
    @venue = Venue.find(params[:id])
    @venue.update(venue_params)
    redirect_to user_venue_path(@user, @venue)
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
