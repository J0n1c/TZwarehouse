class User < ActiveRecord::Base
  has_many :flows
  # Include default devise modules. Others available are:
  # :token_authenticatable,, :confirmable :registerable, :validatable,
  # :timeoutable and :omniauthable
  devise :database_authenticatable,:recoverable,
         :rememberable, :trackable,
         :lockable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :nickname, :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
end
