class Comment < ApplicationRecord
  belongs_to :photo
  belongs_to :user

  validates_presence_of :comment
  validates_presence_of :user_id
  validates_presence_of :photo_id
end
