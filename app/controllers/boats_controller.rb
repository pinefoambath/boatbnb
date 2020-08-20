class BoatsController < ApplicationController
  def index
    # raise
    # if params[:query].present?
    #   @boats = Boat.search_by_location_boat_type_boat_name(params[:query])
    # else
    #   @boats = Boat.all
    # end
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
    @boat.user = current_user
    if @boat.save
      # redirect_to boat_path(@boat)
      redirect_to root_path
    else
      render :new
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
    params.require(:boat).permit(:name, :make, :length, :address, :daily_price, :sleeps, :year_built, :boat_type, :photo)
  end

end
