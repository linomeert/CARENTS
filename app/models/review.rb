class Review < ApplicationRecord
  belongs_to :playdate

  validates :title, presence: true
  validates :description, presence: true
end
