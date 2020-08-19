class BoatsController < ApplicationController
  def index
    @boats = Boat.all
  end

  def show
    @boat = Boat.find(params[:id])
    @booking = Booking.new
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(strong_params)
    if @boat.save
      redirect_to boat_path(@boat)
    else
      render:new
    end
  end

  def destroy
    # @boat = Boat.find(params[:id])
    # @user = @boat.user
    # @booking.destroy
    # redirect_to root_path
  end

  private

  def strong_params
    params.require(:boat).permit(:name, :length, :make, :location_country, :location_marina, :number_of_berths, :daily_price)
  end


end


