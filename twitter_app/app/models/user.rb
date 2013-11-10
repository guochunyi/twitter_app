class User < ActiveRecord::Base
  validates :password, confirmation: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create }
  validates :name, :email, presence: true
  validates :email, uniqueness: true
  validates :email, length: {minimum: 6}
  has_secure_password
end
