class User < ActiveRecord::Base
  has_secure_password

  validates_presence_of :email, :first_name, :last_name, :password, :zipcode
  validates_uniqueness_of :email
end