class Barber < ApplicationRecord
  has_one_attached :avatar

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :barbers, through: :bookings
  belongs_to :shop
  validates :name, presence: true
end
