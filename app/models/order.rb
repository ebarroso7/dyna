class Order < ApplicationRecord
  belongs_to :user
  belongs_to :delivery
  has_one :location, through: :delivery
end
