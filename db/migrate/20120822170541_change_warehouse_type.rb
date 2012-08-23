class ChangeWarehouseType < ActiveRecord::Migration
  def up
    rename_column :warehouse_types, :type, :name
  end

  def down
    rename_column :warehouse_types, :name, :type
  end
end
