class Condition < ApplicationRecord
  has_and_belongs_to_many :children

  validates :name, presence: true
  validates :description, presence: true
end
