class AddServiceToBookings < ActiveRecord::Migration[5.2]
  def change
    add_reference :bookings, :service, index: true
  end
end
