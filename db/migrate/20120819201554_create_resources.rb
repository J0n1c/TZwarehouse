class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :name
      t.integer :weight
      t.string :ico

      t.timestamps
    end
  end
end
