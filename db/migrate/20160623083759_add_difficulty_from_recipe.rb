class AddDifficultyFromRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :difficulty, :integer
  end
end
