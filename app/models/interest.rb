class Interest < ApplicationRecord
  has_and_belongs_to_many :children

  validates :title, presence: true
  validates :icon, presence: true
end
