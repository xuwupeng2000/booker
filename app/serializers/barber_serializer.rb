class BarberSerializer
  include FastJsonapi::ObjectSerializer

  attributes :name, :description
  belongs_to :shop

  link :avatar_url do |barber|
    barber.avatar_url
  end
end
