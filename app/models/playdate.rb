class Playdate < ApplicationRecord
  belongs_to :user

  has_many :reviews, dependant: :destroy

  validates :location, presence: true
  validates :description, presence: true
  validates :date, presence: true
end
