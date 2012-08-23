class CreateStreams < ActiveRecord::Migration
  def change
    create_table :streams do |t|
      t.references :resource
      t.integer :amount
      t.string :acc_id
      t.references :flow
      t.string :time

      t.timestamps
    end
    add_index :streams, :resource_id
    add_index :streams, :flow_id
  end
end
