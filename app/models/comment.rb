class Comment < ApplicationRecord
      validates :content, presence: { message: "must be given" },
                          length: { maximum: 8000 , message: "must be less than 50 charcaters"}
end
