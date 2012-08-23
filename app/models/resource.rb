class Resource < ActiveRecord::Base
  has_many :streams
  attr_accessible :ico, :name, :weight
end
