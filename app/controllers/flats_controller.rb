class FlatsController < ApplicationController


  def index
    @flats = Flat.all
  end

  def show

  end


  def new

  end

  def create

  end

  def edit

  end

  def update

  private

  def flats_params
    params.require(:flat).permit(:name, :adrress, :description,   :price_per_night, :number_of_guests)
  end

  def find_flat
    @flat = Flat.find(params[:id])
  end

end












end
