class BookingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :baber_id, :booked_at, :aasm_state
end
