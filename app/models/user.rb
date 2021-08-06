class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :photos 
  has_many :comments
  has_many :likes

  def full_name
    "#{first_name} #{last_name}"
  end

  def all_followers
    Follower.where(follower_id: self.id).count
  end

  def all_following
    Follower.where(following_id: self.id).count
  end
end
