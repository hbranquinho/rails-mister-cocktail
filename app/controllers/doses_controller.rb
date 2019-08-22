class DosesController < ApplicationController
    before_action :set_cocktail, only: [:index, :new, :create]

    def index
      @doses = Dose.all
    end

    def new
      @dose = Dose.new
    end

    def create
      @cocktail = set_cocktail
      @dose = Dose.new(dose_params)
      @dose.cocktail = @cocktail
      if @dose.save
        redirect_to @cocktail
      else
        render :new
      end
    end

    def destroy
      @dose = set_dose
      @dose.destroy
    end

    private

    def dose_params
      params.require(:dose).permit(:description, :ingredient_id)
    end

    def set_cocktail
      @cocktail = Cocktail.find(params[:cocktail_id])
    end

    def set_dose
      @dose = Dose.find(params[:id])
    end
  end


