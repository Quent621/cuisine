class CreatePreviews < ActiveRecord::Migration
  def change
    create_table :previews do |t|
      t.string :note
      t.string :comment
      t.references :user, index: true, foreign_key: true
      t.references :recipes, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
