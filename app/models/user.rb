class User < ApplicationRecord
  has_many :saved_locations, foreign_key: :user_id, dependent: :destroy
  has_many :locations, through: :saved_locations
  has_many :orders
  has_many :deliveries, through: :order

  has_secure_password
end
