class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  validates :title,  presence: true,  length: { in: 1..75 } 
  validates :category_id, presence: true
  validates :description, presence: true, length: { maximum: 255 }
  mount_uploader :image, ImageUploader
end
