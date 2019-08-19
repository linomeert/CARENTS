class Child < ApplicationRecord
  belongs_to :user

  has_many :conditions, dependent: :destroy
  has_many :interests, dependent: :destroy

  validates :name, presence: true
  validates :biography, presence: true
  validates :age, presence: true
end
