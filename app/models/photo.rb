class Photo < ApplicationRecord
    include ImageUploader[:image]
    belongs_to :user
    has_many :comments
    has_many :likes
end
