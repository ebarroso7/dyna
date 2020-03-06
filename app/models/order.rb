class Order < ApplicationRecord
  belongs_to :user
  belongs_to :delivery
  has_one :location, through: :delivery

  has :delivery_time

  def delivery_time
    delivery.time
  end
end
