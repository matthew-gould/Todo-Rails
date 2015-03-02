class ChangeCompletedForItems < ActiveRecord::Migration
  def change
    change_column :items, :item_complete?, :boolean, null: false, default: false
  end
end
