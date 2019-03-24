class Shop < ApplicationRecord
  has_many :bookings
  has_many :barbers
  has_many :services, through: :barbers

  belongs_to :user
end
