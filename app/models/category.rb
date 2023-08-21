class Category < ApplicationRecord
  CATEGORIES = ["cooking", "sewing", "gardening", "life advices"]
  belongs_to :granny
  validates :name, presence: true, inclusion: { in: CATEGORIES }

end
