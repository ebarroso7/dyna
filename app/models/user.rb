class User < ApplicationRecord
  has_many :locations
  has_many :deliveries
  has_many :orders
end
