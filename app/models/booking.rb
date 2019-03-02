class Booking < ApplicationRecord
  include AASM

  belongs_to :user
  belongs_to :barber

  validates_presence_of :booked_at
  validate :booked_today_or_tmw

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

  private

  def booked_today_or_tmw
    errors.add(:booked_at, "booking has to be made in the future") if booked_at < Time.now
  end
end