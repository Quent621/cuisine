class AddQuantityFromIngredient < ActiveRecord::Migration
  def change
    add_column :ingredients, :quantity, :float
  end
end
