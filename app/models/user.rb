class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :children, dependent: :destroy
  has_many :messages
  has_many :reviews, dependent: :destroy
  has_and_belongs_to_many :conversations
  has_many :playdates, dependant: :destroy

  validates :email, presence: true, uniqueness: true
  validates :picture, presence: true
  validates :address, presence: true
  validates :picture, presence: true
  validates :username, presence: true, uniqueness: true
end
