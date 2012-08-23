class Warehouse < ActiveRecord::Base
  belongs_to :warehouse_type
  attr_accessible :name
end
