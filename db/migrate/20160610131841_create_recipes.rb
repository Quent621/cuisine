class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name_recipe
      t.string :duration
      t.string :photo

      t.timestamps null: false
    end
  end
end
