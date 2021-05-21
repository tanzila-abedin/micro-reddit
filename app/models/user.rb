class User < ApplicationRecord
      has_many :posts
      has_many :comments

    validates :name,  presence: { message: "must be given please" },
                      length: { maximum: 50, message: "must be less thna 50 charcaters" }

    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: { message: "must be given please" }, 
                    length: { maximum: 320, message: "must be less than 320 characters" },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
     
end
