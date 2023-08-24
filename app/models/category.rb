class Category < ApplicationRecord
  CATEGORIES = ["Cuisine", "Couture", "Jardinage", "Conseils de vie"]
  belongs_to :granny
  validates :name, presence: true, inclusion: { in: CATEGORIES }
  include PgSearch::Model
  pg_search_scope :global_search,
                  against: [ :name, :specialty ],
                  associated_against: {
                    granny: [ :name, :location ]
                  },
                  using: {
                    tsearch: { prefix: true }
                  }
end
