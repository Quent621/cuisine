class ChangeQuantityFromIngredient < ActiveRecord::Migration
  def change
    change_column :ingredients, :quantity, :integer
  end
end
