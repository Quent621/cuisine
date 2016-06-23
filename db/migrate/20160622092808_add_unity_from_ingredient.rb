class AddUnityFromIngredient < ActiveRecord::Migration
  def change
    add_column :ingredients, :unity, :integer
  end
end
