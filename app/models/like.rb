class Like < ApplicationRecord
  belongs_to :photo
  belongs_to :user
  validates_uniqueness_of :photo_id, scope: :user_id

  after_create :increase_photo_like_counter
  after_destroy :decrease_photo_like_counter

  private

  def increase_photo_like_counter
    Photo.find(self.photo_id).increment(:total_likes_count).save
  end
  
  def decrease_photo_like_counter
    Photo.find(self.photo_id).decrement(:total_likes_count).save
  end
end