module PostsHelper
  def liked_by?(record, user)
    record.likes.where(user: user).any?
  end
end
