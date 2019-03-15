class Shop < ApplicationRecord
  has_many :bookings
  has_many :barbers
  belongs_to :user
end
