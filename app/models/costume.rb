class Costume < ApplicationRecord
  SIZES = ["XS", "S", "M", "L", "XL", "XXL"]
  CATEGORIES = ["Male", "Female", "Child", "Pets"]
  COLORS = ["Black", "White", "Red", "Blue", "Yellow"]
  OCCASIONS = ["Party", "Birthday", "Halloween", "Carnival", "Christmas"]
  CONDITIONS = ["Very Used", "Gently used", "Good condition", "Very good condition", "Perfect condition"]

  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
end
