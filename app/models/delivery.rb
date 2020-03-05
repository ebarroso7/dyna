class Delivery < ApplicationRecord
  has_many :orders
  belongs_to :location
  has_many :users
end
