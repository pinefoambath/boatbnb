class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @user = User.find(params[:user_id])
  end

  def create

    @booking  =Booking.new(booking_params)
    @user = User.find(params[:user_id])
    @booking.user = @user

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
