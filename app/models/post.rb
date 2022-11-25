class Post < ApplicationRecord
validates :title, presence: true
validates :content, length: { minimum: 250 }
validates :summary, length: { maximum: 250 }
validates :category, inclusion: {in: %w(Fiction Non-Fiction)}

 validate :title_is_clickbait
    def title_is_clickbait
        # unless title&.include?("Won't believe" || "Secret" || "Top [number]" ||"Guess" )
        #     errors.add(:title, "We do not allow this title!")
        # end
        if title == "True Facts"
            errors.add(:title, "Invalid")
        end
    end
end

