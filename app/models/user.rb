class User < ActiveRecord::Base
  has_secure_password
  has_many :fish
  validates :username, presence: true
end