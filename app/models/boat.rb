class Boat < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  has_one_attached :photo

  validates :name, presence: true
  validates :make, presence: true
  validates :length, presence: true
  validates :address, presence: true
  validates :daily_price, presence: true
  validates :sleeps, presence: true
  validates :year_built, presence: true
  validates :boat_type, presence: true

  include PgSearch::Model
        pg_search_scope :search_by_location_boat_type_boat_name,
          against: [ :location_country, :boat_type, :name],
          using: {
            tsearch: { prefix: true } # <-- now `superman batm` will return something!
          }


end
