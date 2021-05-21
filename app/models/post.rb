class Post < ApplicationRecord
      belongs_to :user
      has_many :comments

     validates :content, presence: { message: "must be given" },
               length: { maximum: 40000, message: "must be less than 50 charcaters"}
end
