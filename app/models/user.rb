class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many :children, dependent: :destroy
  has_many :messages, foreign_key: "sender_id", dependent: :destroy
  #has_many :reviews, dependent: :destroy
  has_and_belongs_to_many :conversations
  #has_many :playdates, dependent: :destroy

  validates :email, presence: true, uniqueness: true
  validates :address, presence: true
  #validates :photo, presence: true
  validates :username, presence: true, uniqueness: true

  mount_uploader :photo, PhotoUploader
  mount_uploader :bannerphoto, PhotoUploader
  def display_name
    "#{last_name}"
  end
end
