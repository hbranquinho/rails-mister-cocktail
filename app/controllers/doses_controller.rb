class DosesController < ApplicationController
    before_action :set_cocktail, only: [:index, :new, :create]

    def index
      @doses = Dose.all
    end

    def new
      @dose = Dose.new
    end

    def create
      @dose = Dose.new(dose_params)
      # raise
      @dose.cocktail = @cocktail
      @dose.ingredient = Ingredient.find(params[:dose][:ingredient]) if params[:dose][:ingredient] != ''

      if @dose.save
        redirect_to cocktail_path(@cocktail)
      else
        render :new
      end
    end

    def destroy
      @dose = set_dose
      @dose.destroy
      redirect_to cocktail_path(@dose.cocktail_id)
    end

    private

    def dose_params
      params.require(:dose).permit(:description)
    end

    def set_cocktail
      @cocktail = Cocktail.find(params[:cocktail_id])
    end

    def set_dose
      @dose = Dose.find(params[:id])
    end
  end


