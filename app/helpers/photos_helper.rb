module PhotosHelper

    def photo_liked_by_user? photo_id
        Like.where(photo_id: photo_id, user_id: current_user.id).any?
    end
end
