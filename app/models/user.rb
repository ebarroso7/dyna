class User < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :first_name, presence: true, length: { maximum: 50 }
  validates :last_name, presence: true, length: { maximum: 70 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                  format: { with: VALID_EMAIL_REGEX },
                  uniqueness: true
  has_secure_password
  validates :password, length: { minimum: 6 }
  
  has_many :saved_locations, foreign_key: :user_id, dependent: :destroy
  has_many :locations, through: :saved_locations
  has_many :orders
  has_many :deliveries, through: :order
end
