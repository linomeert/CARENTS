class Child < ApplicationRecord
  belongs_to :user

  has_and_belongs_to_many :conditions, dependent: :destroy
  has_and_belongs_to_many :interests, dependent: :destroy

  validates :name, presence: true
  validates :biography, presence: true
  validates :age, presence: true
end
