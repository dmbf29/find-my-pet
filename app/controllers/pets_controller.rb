class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update]

  def index
    @pets = Pet.all
  end

  def show
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to pet_path(@pet)
    else
      render 'new.html.erb'
    end
  end

  def edit
  end

  def update
    if @pet.update(pet_params)
      redirect_to pet_path(@pet)
    else
      # render 'edit.html.erb'
      render :edit
    end
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :address, :found_on, :species, :status)
  end

  def set_pet
    @pet = Pet.find(params[:id])
  end
end