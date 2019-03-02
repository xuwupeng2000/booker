class Booking < ApplicationRecord
  include AASM

  belongs_to :user
  belongs_to :barber

  aasm do
    state :booked, initial: true
    state :finished
    state :expired
    state :canceled

    event :finish do
      transitions from: [:booked], to: [:finished]
    end

    event :cancel do
      transitions from: [:booked], to: [:canceled]
    end

    event :expire do
      transitions from: [:booked], to: [:expired]
    end
  end
end
