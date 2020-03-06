class Location < ApplicationRecord
  has_many :saved_locations, foreign_key: :location_id, dependent: :destroy
  has_many :users, through: :saved_locations
  has_many :deliveries
end
