class PlantsController < ApplicationController
  before_action :set_gorden, only: [:new, :create]

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(plant_params)
    @plant.gorden = @gorden
    if @plant.save
      redirect_to gorden_path(@gorden)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_gorden
    @gorden = Gorden.find(params[:gorden_id])
  end

  def plant_params
    params.require(:plant).permit(:name, :image_url)
  end
end
