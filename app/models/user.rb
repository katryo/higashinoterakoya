class User < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  attr_accessible :name, :password, :password_confirmation, :special_password
  has_secure_password
end
