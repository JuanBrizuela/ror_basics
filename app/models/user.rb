class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts
  has_many :comments

  has_one_attached :profile_picture

  def display_name
    return email.split('@').first unless first_name

    "#{first_name} #{last_name}"
  end
end
