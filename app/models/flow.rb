class Flow < ActiveRecord::Base
  belongs_to :warehouse
  belongs_to :user
  has_many :streams
  attr_accessible :text
  accepts_nested_attributes_for :streams
end
