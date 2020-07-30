class Burger < ApplicationRecord
  belongs_to :restaurant
  has_many_attached :images
  validates :name, presence: true
  validates :description, length: { maximum: 500,
    too_long: "%{count} characters is the maximum allowed" }
  validates :adress, presence: true
  validates :price, presence: true
end
