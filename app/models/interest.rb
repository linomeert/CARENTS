class Interest < ApplicationRecord
  belongs_to :child

  validates :title, presence: true
  validates :icon, presence: true
end
