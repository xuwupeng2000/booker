class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.belongs_to :user
      t.belongs_to :barber
      t.datetime :booked_at

      t.timestamps
    end
  end
end
