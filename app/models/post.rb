class Post < ApplicationRecord
  has_rich_text :content

  has_many :comments
  has_many :likes, as: :likable
  belongs_to :user, optional: true
end
