class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :item_name
      t.datetime :item_due
      t.boolean :item_complete?
      t.integer :list_id

      t.timestamps null: false
    end
  end
end
