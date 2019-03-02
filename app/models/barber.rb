class Barber < ApplicationRecord
  has_many :barbers, through: :bookings
end
