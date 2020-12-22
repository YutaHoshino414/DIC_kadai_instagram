class Picture < ApplicationRecord
  belongs_to :user, optional:true
  mount_uploader :image, ImageUploader
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
  validates :content, :image, presence: true
end
