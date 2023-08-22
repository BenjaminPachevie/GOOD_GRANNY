class Category < ApplicationRecord
  CATEGORIES = ["cusine", "couture", "jardinage", "conseils de vie"]
  belongs_to :granny
  validates :name, presence: true, inclusion: { in: CATEGORIES }

end
