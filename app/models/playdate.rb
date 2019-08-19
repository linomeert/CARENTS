class Playdate < ApplicationRecord
  belongs_to :inviter, class_name: User.name, foreign_key: "inviter_id"
  belongs_to :receiver, class_name: User.name, foreign_key: "receivers_id"
  has_many :reviews

  validates :location, presence: true
  validates :description, presence: true
  validates :date, presence: true
end
