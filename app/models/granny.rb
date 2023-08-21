class Granny < ApplicationRecord
  belongs_to :user
  has_many :reservations, :categories
end
