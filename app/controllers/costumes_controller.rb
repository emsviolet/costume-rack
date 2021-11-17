class CostumesController < ApplicationController
  def index
    @costumes = Costume.geocoded
    @markers = @costumes.geocoded.map do |costume|
      {
        lat: costume.latitude,
        lng: costume.longitude
      }
    end
  end

  def show
    @costume = Costume.find(params[:id])
  end


end
