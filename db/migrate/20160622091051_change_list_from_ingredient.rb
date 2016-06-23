class ChangeListFromIngredient < ActiveRecord::Migration
  def change
    rename_column :ingredients, :list, :name
  end
end
