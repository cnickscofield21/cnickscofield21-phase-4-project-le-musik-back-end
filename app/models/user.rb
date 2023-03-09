class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  validates :password, length: { in: 6..20 }
  has_secure_password
end
