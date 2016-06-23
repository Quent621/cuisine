class Recipes::RecipesController < RecipesController

  before_action :set_recipe

  def index
    @ingredient = @recipe.ingredient
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end
end
