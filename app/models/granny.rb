class Granny < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  has_many :categories
  accepts_nested_attributes_for :categories
  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
  validates :presentation, length: { minimum: 14 }
  validates :location, :price, presence: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
