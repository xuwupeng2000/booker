class Service < ApplicationRecord
  belongs_to :barber
  monetize :price_cents
end
