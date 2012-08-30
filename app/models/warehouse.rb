class Warehouse < ActiveRecord::Base
  belongs_to :warehouse_type
  attr_accessible :name, :warehouse_type_id
end
