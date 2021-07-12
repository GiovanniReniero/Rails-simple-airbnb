class FlatsController < ApplicationController
  before_action :find_flat, except: [:index, :new, :create]

  def index
    @flats = Flat.all
  end

  def show
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flats_params)
    @flat.save
    redirect_to flats_path
  end
  
  def edit
  end
  
  def update
    @flat.update(flats_params)
    redirect_to flats_path
  end

  private

  def flats_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end

  def find_flat
    @flat = Flat.find(params[:id])
  end

end
