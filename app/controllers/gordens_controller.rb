class GordensController < ApplicationController
  def index
    @gordens = Gorden.all
  end

  def show
    @gorden = Gorden.find(params[:id])
  end
end
