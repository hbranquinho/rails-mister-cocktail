class IngredientsController < ApplicationController

  def new
    @ingredient = Ingredient.new
  end

  def create
      @ingredient = Ingredient.new(ingredient_params)
      if @ingredient.save
        redirect_to cocktail_path(@dose)
      else
        render :new
      end
    end

    private

    def ingredient_params
      params.require(:ingredient).permit(:name)
    end
end
