class Granny < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_many :categories
  has_one_attached :photo
  validates :name, presence: true, uniqueness: true
  validates :presentation, length: { minimum: 14 }
  validates :location, :price, presence: true
end
