class DropAmountTable < ActiveRecord::Migration
  def up
    drop_table :amounts
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
