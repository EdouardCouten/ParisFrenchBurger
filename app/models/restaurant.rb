class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :burgers
  validates :name, presence: true
  validates :adress, presence: true
  validates :description, length: { maximum: 500,
    too_long: "%{count} characters is the maximum allowed" }
end
