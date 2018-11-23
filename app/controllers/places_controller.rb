class PlacesController < ApplicationController
  before_action :authenticate_user!, only: [:create, :new, :update, :edit]

  def index
    @places = Place.all
    if params[:owner]
      @places = @places.where(owner_id: params[:owner])
    end
  end

  def show
    @place = Place.find(params[:id])
  end

  def new
    @place = Place.new
  end

  def create
    @place = current_user.places.build(place_params)
    if @place.save
      redirect_to place_path(@place.id)
    else
      render :new
    end
  end

  def edit
    @place = current_user.places.find(params[:id])
  end

  def update
    @place = current_user.places.find(params[:id])
    if @place.update(place_params)
      redirect_to place_path(@place.id)
    else
      render :edit
    end
  end

  private

  def place_params
    params.require(:place)
      .permit(
        :country,
        :city,
        :price_per_night,
        :bedrooms,
        :bathrooms,
        :guests_capacity,
        :name,
        :description)
  end
end
