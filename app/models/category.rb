class Category < ApplicationRecord
  has_many :posts
  # このテーブルだけ独立していて、カテゴリid: カテゴリ名　のテーブルに相当している
  # 各postの投稿時にこれを指定する。
end
