class BookingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_venue

  def index
    @bookings = @venue.bookings.where(user: current_user)
  end

  def show
    @booking = @venue.bookings.find(params[:id])
  end

  def new
    @booking = @venue.bookings.new
  end

  def create
    @booking = @venue.bookings.new(booking_params)
    @booking.user = current_user
    @booking.price = (@booking.final_date - @booking.initial_date) * @venue.price
    if @booking.save
      redirect_to venue_booking_path(@venue, @booking)
    else
      render :new
    end
  end

  def edit
    @booking = @venue.bookings.find(params[:user_id])
  end

  def update
    @booking = @venue.bookings.find(params[:user_id])
    @booking.update(booking_params)
    redirect_to venue_booking_path(@venue, @booking)
  end

  private

  def set_venue
    @venue = Venue.find(params[:venue_id])
  end

  def booking_params
    params.require(:booking).permit(:initial_date, :final_date)
  end
end
