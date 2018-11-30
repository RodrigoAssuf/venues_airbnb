class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @venue_types = []
    @venue_types << "All"
    @venue_types += Venue::VENUE_TYPE
    @venues = Venue.all
  end
end
