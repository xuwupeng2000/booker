Booking.delete_all

10.times do
  FactoryBot.create(:user)
  FactoryBot.create(:barber)
end
10.times do
  FactoryBot.create(:booking, user: User.take, barber: Barber.take)
end

