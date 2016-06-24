class ChangeContentFromStep < ActiveRecord::Migration
  def change
    change_column :steps, :content, :text
  end
end
