class UsersController < ApplicationController
  def show
    @user = current_user
    # @bookings = Booking.find(params[:user_id])
    # @boats = Boat.find(params[:boat_id])
  end
end
