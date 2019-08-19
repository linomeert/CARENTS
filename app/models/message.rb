class Message < ApplicationRecord
  belongs_to :user

  has_many :conversations, dependent: :destroy

  validates :content, presence: true
end
