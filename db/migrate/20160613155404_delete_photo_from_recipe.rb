class DeletePhotoFromRecipe < ActiveRecord::Migration
  def change
    remove_column :recipes, :photo
  end
end
