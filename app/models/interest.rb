class Interest < ApplicationRecord
  has_and_belongs_to_many :children

  validates :name, presence: true
  validates :photo, presence: true

  mount_uploader :photo, PhotoUploader
end


