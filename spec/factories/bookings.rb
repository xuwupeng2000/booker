FactoryBot.define do
  factory :booking, class: 'Booking' do
    user
    shop
    barber
    booked_at { Time.now + 1.day }
    aasm_state { "booked" }
  end
end
