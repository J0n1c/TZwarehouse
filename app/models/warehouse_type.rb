class WarehouseType < ActiveRecord::Base
  has_many :warehouses
  attr_accessible :name
  validates :name, :presence => true, :uniqueness => true
end