class BarberSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description
end
