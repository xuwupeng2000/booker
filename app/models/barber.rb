class Barber < ApplicationRecord
  include Rails.application.routes.url_helpers
  has_one_attached :avatar

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :barbers, through: :bookings
  has_many :services
  belongs_to :shop
  validates :name, presence: true

  def avatar_url
    default_url_options[:host] = "localhost"
    default_url_options[:port] = 3000

    rails_blob_url(avatar) if avatar.attached?
  end
end
