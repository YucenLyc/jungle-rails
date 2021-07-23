# where the user login gets validated 
class User < ActiveRecord::Base
  has_secure_password
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :password_digest, presence: true
end