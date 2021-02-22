class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  # belongs_to :category
  validates :description, presence: true, length: { maximum: 255 }
  mount_uploader :image, ImageUploader
end
