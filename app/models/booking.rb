class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :costume

  enum status: [ :pending, :accepted, :declined ]
  before_create :set_total_price

  def set_total_price
    self.total_price = (self.end_date - self.start_date).to_i * costume.price
  end
end
