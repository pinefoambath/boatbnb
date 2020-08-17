class Boat < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings
  validates :name, presence: true
  validates :length, presence: true
  validates :make, presence: true
  validates :location_country, presence: true
  validates :location_marina, presence: true
  validates :number_of_berths, presence: true
  validates :daily_price, presence: true
end
