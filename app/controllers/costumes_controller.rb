class CostumesController < ApplicationController
  def index
    @costumes = Costume.all
  end

  def show
    @costume = Costume.find(params[:id])
  end

  def new
    @costume = Costume.new
  end

  def create
    @costume = Costume.new(costume_params)
    if @costume.save!
      # redirect_to user profile - but maybe index for now
    else
      render :new
    end
  end

  private

  def costume_params
    params.require(:costume).permit(:name, :description, :size, :location, :category, :color, :price, :user_id, :occasion, :condition, :photo)
  end
end
