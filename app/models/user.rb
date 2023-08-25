class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :grannies, dependent: :destroy
  has_many :reservations
  has_many :booked_grannies, through: :reservations, source: :granny

  has_one_attached :photo
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true, uniqueness: true
  validates :password, length: { in: 6..20 }
  validates :email, presence: true

  # JIC
  # def booked_grannies
  #   self.grannies.map(&:reservations).flatten
  # end
end
