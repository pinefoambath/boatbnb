class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    if params[:query].present?
      @boats = Boat.search_by_location_boat_type_boat_name(params[:query])
    else
      @boats = Boat.all
    end
  end
end
