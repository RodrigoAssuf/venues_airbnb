class BookingsController < ApplicationController
  before_action :authenticate_user!
end
