class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user, optional: true

  has_many :likes, as: :likable

  validates_presence_of :content
end
