class Stream < ActiveRecord::Base
  belongs_to :resource
  belongs_to :flow
  attr_accessible :acc_id, :amount, :time
end
