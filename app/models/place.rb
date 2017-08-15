class Place < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  after_validation :geocode

  validates :name, presence: true, length: { minimum: 4, message: "Must be at least 4 characters" }
  validates :address, presence: true
  validates :description, presence: true
end
