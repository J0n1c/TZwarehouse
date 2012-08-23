class CreateFlows < ActiveRecord::Migration
  def change
    create_table :flows do |t|
      t.references :warehouse
      t.references :user
      t.string :text

      t.timestamps
    end
    add_index :flows, :warehouse_id
    add_index :flows, :user_id
  end
end
