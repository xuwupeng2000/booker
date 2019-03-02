class Barber < ApplicationRecord
  has_many :barbers, through: :bookings
  validates_presence_of :name
end
