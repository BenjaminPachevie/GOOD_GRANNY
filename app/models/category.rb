class Category < ApplicationRecord
  CATEGORIES = ["Cuisine", "Couture", "Jardinage", "Conseils de vie"]
  belongs_to :granny
  validates :name, presence: true, inclusion: { in: CATEGORIES }
end
