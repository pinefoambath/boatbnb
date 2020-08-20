class Boat < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  has_one_attached :photo
  has_many_attached :photos

  validates :name, presence: true
  validates :make, presence: true
  validates :length, presence: true
  validates :address, presence: true
  validates :daily_price, presence: true
  validates :sleeps, presence: true
  validates :year_built, presence: true
  validates :boat_type, presence: true
end
