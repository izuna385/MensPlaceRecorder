class User < ApplicationRecord
  before_save { self.email.downcase! }
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false }
  has_secure_password

  has_many :posts
  has_many :favorites
  has_many :liked_posts, through: :favorites, source: :post

  def like(one_post)
    self.favorites.find_or_create_by(post_id: one_post.id)
  end

  def unlike(one_post)
    favorite = self.favorites.find_by(post_id: one_post.id)
    favorite.destroy if favorite
  end

  def like?(one_post)
    self.liked_posts.include?(one_post)
  end
  
end