class User < ApplicationRecord
  has_many :locations
  has_many :orders
  has_many :deliveries, through: :order
end
