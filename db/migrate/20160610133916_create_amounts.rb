class CreateAmounts < ActiveRecord::Migration
  def change
    create_table :amounts do |t|
      t.references :recipes, index: true, foreign_key: true
      t.references :ingredient, index: true, foreign_key: true
      t.string :quantity

      t.timestamps null: false
    end
  end
end
