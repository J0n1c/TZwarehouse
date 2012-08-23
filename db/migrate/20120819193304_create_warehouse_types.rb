class CreateWarehouseTypes < ActiveRecord::Migration
  def change
    create_table :warehouse_types do |t|
      t.string :type

      t.timestamps
    end
  end
end
