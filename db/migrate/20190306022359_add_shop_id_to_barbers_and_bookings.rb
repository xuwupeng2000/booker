class AddShopIdToBarbersAndBookings < ActiveRecord::Migration[5.2]
  def change
    add_reference :barbers, :shop, index: true
    add_reference :bookings, :shop, index: true
  end
end
