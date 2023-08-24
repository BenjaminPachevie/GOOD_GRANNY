class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :granny

  validate :expiration_date_validation

  def expiration_date_validation
    if end_date < start_date
      errors.add(:end_date, "can't be before the start date")
    end
  end

  def pending?
    status == 'pending'
  end

end
