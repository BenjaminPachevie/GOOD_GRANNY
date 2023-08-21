class Granny < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_many :categories
end
