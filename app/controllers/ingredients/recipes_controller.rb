class Ingredients::RecipesController < RecipesController

  before_action :set_ingredient

  def index
    @recipes = @ingredient.recipes
  end

  private

  def set_ingredient
    @ingredient = Ingredient.find(params[:ingredient_id])
  end
end
