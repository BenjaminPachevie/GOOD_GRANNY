class Granny < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  has_many :categories, dependent: :destroy
  accepts_nested_attributes_for :categories
  has_many_attached :photos

  validates :name, presence: true, uniqueness: true
  validates :presentation, length: { minimum: 14 }
  validates :location, :price, presence: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  # include PgSearch::Model
  # pg_search_scope :global_search,
  #                 against: [ :name, :location ],
  #                 # associated_against: {
  #                 #   cateogory: [ :name ]
  #                 # },
  #                 using: {
  #                   tsearch: { prefix: true }
  #                 }

end
