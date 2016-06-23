class AddBakingFromRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :baking, :text
  end
end
