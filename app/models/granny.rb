class Granny < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  has_many :categories
  accepts_nested_attributes_for :categories
  has_many_attached :photos

  validates :name, presence: true, uniqueness: true
  validates :presentation, length: { minimum: 14 }
  validates :location, :price, presence: true
end
