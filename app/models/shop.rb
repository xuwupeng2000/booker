class Shop < ApplicationRecord
  has_many :bookings
  has_many :barbers
end
