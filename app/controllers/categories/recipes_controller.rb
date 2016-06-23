class Categories::RecipesController < RecipesController

  before_action :set_category

  def index
    @recipes = @category.recipes
  end

  private

  def set_category
    @category = Category.find(params[:category_id])
  end
end
