class CostumesController < ApplicationController
  def index
    if params[:occasion]
    @costumes = Costume.geocoded.where(occasion: params[:occasion])
    elsif params[:category]
      @costumes = Costume.geocoded.where(category: params[:category])
    end
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

  def new
    @costume = Costume.new
  end

  def create
    @costume = Costume.new(costume_params)
    @costume.user = current_user
    if @costume.save!
      redirect_to costume_path(@costume)
    else
      render :new
    end
  end

  private

  def costume_params
    params.require(:costume).permit(:name, :description, :size, :location, :category, :color, :price, :user_id, :occasion, :condition, :photo)
  end
end
