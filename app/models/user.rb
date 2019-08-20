class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :children, dependent: :destroy
  has_many :messages
  #has_many :reviews, dependent: :destroy
  has_and_belongs_to_many :conversations
  #has_many :playdates, dependent: :destroy

  validates :email, presence: true, uniqueness: true
  validates :address, presence: true
  validates :photo, presence: true
  validates :username, presence: true, uniqueness: true

  mount_uploader :photo, PhotoUploader
end
