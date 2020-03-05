class Location < ApplicationRecord
  has_many :users
  has_many :deliveries
end
