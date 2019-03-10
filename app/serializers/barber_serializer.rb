class BarberSerializer
  include FastJsonapi::ObjectSerializer

  attributes :name, :description
  belongs_to :shop
  has_many :services

  attribute :avatar_url do |barber|
    barber.avatar_url
  end
end
