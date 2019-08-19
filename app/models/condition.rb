class Condition < ApplicationRecord
  belongs_to :child

  validates :name, presence: true
  validates :description, presence: true
end
