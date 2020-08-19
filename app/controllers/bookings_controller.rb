class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    # @user = User.find(params[:user_id])
    @boat = Boat.find(params[:boat_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @boat = Boat.find(params[:boat_id])
    days_booked = @booking.end_date - @booking.start_date
    @booking.total_price = days_booked*@boat.daily_price
    @booking.boat = @boat
    @booking.user = current_user
    if @booking.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @user = @booking.user
    @booking.destroy
    redirect_to root_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
