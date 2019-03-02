class BookingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :barber_id, :booked_at, :aasm_state
  belongs_to :user
  belongs_to :barber
end
