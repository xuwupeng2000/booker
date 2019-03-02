FactoryBot.define do
  factory :booking, class: 'Booking' do
    user
    barber
    booked_at { Time.now }
    aasm_state { "booked" }
  end
end
