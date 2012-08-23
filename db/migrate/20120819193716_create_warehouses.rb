class CreateWarehouses < ActiveRecord::Migration
  def change
    create_table :warehouses do |t|
      t.string :name
      t.references :warehouse_type

      t.timestamps
    end
    add_index :warehouses, :warehouse_type_id
  end
end
