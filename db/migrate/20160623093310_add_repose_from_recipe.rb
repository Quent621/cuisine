class AddReposeFromRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :repose, :text
  end
end
